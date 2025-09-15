# 🗂️ Assignment — Organizing a Project Workspace (Root User)


Before starting, **copy the `grading.sh` script to the Linux system** where you will complete this assignment.  
Run the following command to give it full permission (ignore what it does for now):

```bash
chmod 777 grading.sh
```

Once done, start solving the assignment tasks below.  
Immediately after finishing all tasks, run:

```bash
./grading.sh
```

You will get your score.

Complete the following tasks on a Linux system **while logged in as `root`**.  
Follow each step exactly as written, using the provided absolute paths.  

---

## 📌 1. Verify User and Location

1. Display the account name of the current user.  
2. Show the full path of the current working directory.

---

## 📁 2. Create the Project Structure

1. Inside the root home directory (`/root`), create a directory:

   ```text
   /root/project
   ```

2. Inside `/root/project`, create:

   ```text
   /root/project/docs
   /root/project/src
   /root/project/archive
   ```

---

## 📄 3. Create Files

1. In `/root/project/docs`, create:

   ```text
   /root/project/docs/readme.txt
   /root/project/docs/notes.txt
   ```

2. In `/root/project/src`, create **ten empty files**:

   ```text
   /root/project/src/code1.java
   /root/project/src/code2.java
   ...
   /root/project/src/code10.java
   ```

---

## ✍️ 4. Add and Modify Content

1. Insert the text:

   ```text
   Hello Project
   ```

   into `/root/project/docs/readme.txt`.

2. Append the line:

   ```text
   Version 1
   ```

   to `/root/project/docs/notes.txt`.

---

## 📝 5. Combine Information

1. Display the content of `/root/project/docs/readme.txt`.  
2. Merge the contents of:

   ```text
   /root/project/docs/readme.txt
   /root/project/docs/notes.txt
   ```

   into:

   ```text
   /root/project/archive/summary.txt
   ```

---

## 🔄 6. Copy, Move, and Rename

1. Copy:

   ```text
   /root/project/archive/summary.txt
   ```

   to:

   ```text
   /tmp/summary.txt
   ```

2. Move:

   ```text
   /root/project/docs/readme.txt
   ```

   into:

   ```text
   /root/project/archive/
   ```

3. Rename:

   ```text
   /root/project/docs/notes.txt
   ```

   →  

   ```text
   /root/project/docs/project_notes.txt
   ```

---

## 📜 7. Work with Listings

1. Inside `/root/project/src`, create a hidden file:

   ```text
   /root/project/src/.config
   ```

2. List the contents of `/root/project/src`:
   - Show detailed information for every file.
   - Include hidden files.
   - Sort the list so the **oldest item** appears first.

---

## 🧹 8. Clean Up

1. Delete:

   ```text
   /root/project/src/.config
   ```

2. Move all files from:

   ```text
   /root/project/archive
   ```

   into:

   ```text
   /tmp/
   ```

3. Remove the empty directory:

   ```text
   /root/project/archive
   ```

---

## ⭐ 9. Bonus (Optional)

1. Display the current date and time in the format:

   ```text
   YYYY-MM-DD HH:MM:SS
   ```

2. Show the calendar for **December 2025**.

---  
