#!/bin/bash

# Defensive Bash Script for Network Threat Mitigation
# Author: [Your Name]
# Date: [Date]
# Description: This script implements defensive measures to mitigate threats identified in the PCAP file.
#              The script includes IP blocking, suspicious activity detection, and basic reporting.

# Constants
LOG_FILE="/var/log/network_defense.log"
ALERT_EMAIL="example@gmail.com"
BLOCKED_IPS_FILE="/etc/network_defense/blocked_ips.txt"
PCAP_FILE="attack_traffic.pcap"

# Ensure the necessary directories exist
mkdir -p /etc/network_defense

# Log function
log() {
    echo "[$(date)] $1" | tee -a "$LOG_FILE"
}

# Step 1: Install required tools (Ensure tools are installed)
install_tools() {
    log "Installing necessary tools..."
    apt update && apt install -y tcpdump iptables mailutils || {
        log "Error: Failed to install required tools."
        exit 1
    }
}

# Step 2: Populate the blocked IPs file with random IPs for demonstration
populate_blocked_ips() {
    log "Populating blocked IPs file with random IPs..."
    cat <<EOL > "$BLOCKED_IPS_FILE"
192.168.1.100
203.0.113.10
198.51.100.25
172.16.0.5
10.0.0.200
EOL
    log "Blocked IPs file populated."
}

# Step 3: Block malicious IPs from the provided file
block_malicious_ips() {
    log "Blocking malicious IPs..."
    [ ! -f "$BLOCKED_IPS_FILE" ] && touch "$BLOCKED_IPS_FILE"

    while IFS= read -r ip; do
        iptables -A INPUT -s "$ip" -j DROP
        log "Blocked IP: $ip"
    done < "$BLOCKED_IPS_FILE"
}

# Step 4: Monitor network traffic for suspicious activity
monitor_traffic() {
    log "Starting network traffic monitoring..."
    if [ ! -f "$PCAP_FILE" ]; then
        log "Warning: PCAP file $PCAP_FILE not found. Skipping traffic monitoring."
        return
    fi

    tcpdump -n -r "$PCAP_FILE" 'tcp[tcpflags] & (tcp-syn) != 0' 2>/dev/null | awk '{print $3}' | sort | uniq -c | sort -nr | while read count ip; do
        if [ "$count" -gt 100 ]; then
            log "Potential attack detected from $ip with $count SYN packets. Blocking..."
            iptables -A INPUT -s "$ip" -j DROP
            echo "$ip" >> "$BLOCKED_IPS_FILE"
        fi
    done
}

# Step 5: Send alert notifications
send_alert() {
    log "Sending alert to $ALERT_EMAIL..."
    echo "Defensive actions have been taken. Check the log file at $LOG_FILE for details." | mail -s "Network Defense Alert" "$ALERT_EMAIL"
}

# Step 6: Generate report of actions taken
generate_report() {
    log "Generating report of actions taken..."
    REPORT_FILE="/etc/network_defense/defense_report.txt"
    echo "--- Network Defense Report ---" > "$REPORT_FILE"
    echo "Date: $(date)" >> "$REPORT_FILE"
    echo "Blocked IPs:" >> "$REPORT_FILE"
    cat "$BLOCKED_IPS_FILE" >> "$REPORT_FILE"
    echo "Log file: $LOG_FILE" >> "$REPORT_FILE"

    if command -v mutt &> /dev/null; then
        echo "Report is attached." | mutt -s "Network Defense Report" -a "$REPORT_FILE" -- "$ALERT_EMAIL"
    elif command -v mailx &> /dev/null; then
        echo "Report is attached." | mailx -s "Network Defense Report" -a "$REPORT_FILE" "$ALERT_EMAIL"
    else
        log "Warning: Neither mutt nor mailx found. Sending report contents inline."
        cat "$REPORT_FILE" | mail -s "Network Defense Report" "$ALERT_EMAIL"
    fi
}

# Main script execution
log "Starting defensive script execution..."
install_tools
populate_blocked_ips
block_malicious_ips
monitor_traffic
send_alert
generate_report
log "Defensive script execution completed."

exit 0

