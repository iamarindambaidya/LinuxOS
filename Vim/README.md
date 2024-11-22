# Vim Commands Cheat Sheet

## Creating and Editing a File
1. **Create/Edit a file**: `vim <file-name>`
2. **Save and exit**: Press `Esc`, then type `:wq` and press Enter.
3. **Exit without saving**: Press `Esc`, then type `:q!` and press Enter.

---

## Navigating in Vim (ESC Mode)
1. **Go to the bottom of the file**: `Shift+G`
2. **Go to the top of the file**: `gg`

---

## Searching in Vim
1. **Search forward**: `/word` (then press Enter and use `n` to go to the next match).
2. **Search backward**: `?word` (then press Enter and use `n` to go to the previous match).
3. **Search the word under the cursor**:
   - Forward search: `*`
   - Backward search: `#`

---

## Replace Word (Substitute)
1. **Replace a word in the entire file**: `:%s/<old-word>/<new-word>`

---

## Undo and Redo
1. **Undo**: `u`
2. **Redo**: `Ctrl+r`

---

## Editing Lines
1. **Insert a new line below the current line**: `o`
2. **Insert a new line above the current line**: `Shift+O`
3. **Insert at the beginning of the line**: `Shift+I`
4. **Insert at the end of the line**: `Shift+A`

---

## Deleting and Replacing
1. **Delete a single character**: Place the cursor on the character and press `x`.
2. **Replace a single character**:
   - Press `r`, then type the new character.
3. **Delete an entire line**: `dd`
4. **Undo all changes**: `:e!`
5. **Delete multiple lines**: `<number of lines>dd` (e.g., `15dd` deletes 15 lines).

---

## Pasting
1. **Paste below the cursor**: `p`
2. **Paste above the cursor**: `Shift+P`

---

## Selecting Text
1. **Select part of a line**: Press `v` and use arrow keys.
2. **Select a whole line**: Press `Shift+V`.

---

## Toggle Line Numbers
1. **Enable line numbers**: `:set nu`
2. **Disable line numbers**: `:set nonu`

---

## Syntax Highlighting (for `.sh` files)
1. **Enable syntax highlighting**: `:syntax on`
2. **Disable syntax highlighting**: `:syntax off`

---

## Go to a Specific Line
1. **Jump to a line number**: `:<line-number>` (e.g., `:15`)

---

## Working with Multiple Files
1. **Open multiple files**: `vim -o <file1> <file2>`
2. **Switch between files**: Press `Ctrl+w` (twice).
   - You can edit both files and even copy from one file and paste into the other.

---

## Comparing Files
1. **Compare two files**: `vim -d <file1> <file2>`

---

This cheat sheet can help you effectively use Vim for various tasks. If you have any suggestions or updates, feel free to contribute!
