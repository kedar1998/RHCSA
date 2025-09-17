# 📄 Linux Assignment — Working with Text Editors & File Viewers (Root User)

Before starting, **copy the `grading.sh` script to your Linux system** where you will complete this assignment.  
Give it full permission (ignore what this does for now):

```bash
chmod 777 grading.sh
```

After you finish the tasks below, run:

```bash
./grading.sh
```

to get your score.

---

## 📌 1. Prepare a Sample File

1. Inside `/root`, create a file named:

   ```text
   /root/story.txt
   ```

2. Open `/root/story.txt` with a text editor.  
3. Add at least **15 lines of text** describing anything (one sentence per line).  
4. Save and exit the editor.

---

## ✍️ 2. Practice Editing with `vi` / `vim`

1. Open `/root/story.txt` in `vi`.  
2. Enable line numbers for the file.  
3. Copy (yank) the first line.  
4. Paste it after the third line.  
5. Delete the fifth line.  
6. Undo the last deletion.  
7. Save the file without closing the editor.  
8. Quit the editor.

---

## 🔍 3. Search and Replace Inside `vi`

1. Re-open `/root/story.txt` in `vi`.  
2. Search for a word that exists in the file.  
3. Replace every occurrence of that word with a different word **throughout the file**.  
4. Save and quit.

---

## 📜 4. View Large Files with `more` and `less`

1. Use `more` to view `/root/story.txt`. Scroll forward by one page, then quit.  
2. Use `less` to open `/root/story.txt`.  
   - Move forward one line.  
   - Move backward one screen.  
   - Jump to the beginning, then to the end.  
   - Quit.

---

## 📄 5. Use `head` and `tail`

1. Show the first 5 lines of `/root/story.txt`.  
2. Show the last 8 lines of `/root/story.txt`.  
3. Keep watching the end of the file for live changes.

---

## 🔎 6. Search with `grep`

1. Display all lines in `/root/story.txt` that contain a particular word.  
2. Repeat the search ignoring case.  
3. Show only the count of matching lines.  
4. Display matching lines with their line numbers.

---

## ✂️ 7. Extract Columns with `cut`

1. Create a new file:

   ```text
   /root/data.csv
   ```

   with at least **5 lines** of comma-separated values, e.g.:

   ```
   name,age,city,country
   ...
   ```

2. From `/root/data.csv`, show:
   - The first column only.  
   - The second and fourth columns.  

---

## 🔢 8. Count with `wc`

1. Run a command to display:
   - Number of lines, words, and bytes in `/root/story.txt`.  
2. Show only the number of lines.  
3. Show only the number of words.  
4. Show only the number of bytes.

---
