# 🧭 Level 2 – Paths

Welcome to Level 2.

In Level 1 you learned how to move around in directories.
Now it's time to learn something more powerful.

---

## 🎯 Goal

In this level you will learn:

* how to work with paths
* how to access files without moving into directories
* how to explore the filesystem from one position

👉 You will stay in this directory the whole time.

---

## 📍 Your current position

You are here:

```bash
02-paths
```

You will NOT leave this directory in this level.

---

## ⚠️ Important rule

You are **NOT allowed** to use:

* `cd`

If you catch yourself wanting to use `cd`, stop 😄

👉 Everything you need can be done using paths.

---

## 💡 How to work in this level

Instead of moving into directories, you will:

* look inside folders:

  ```bash
  ls folder
  ```

* read files:

  ```bash
  cat folder/file.txt
  ```

* go deeper:

  ```bash
  ls folder/subfolder
  ```

---

## 🧩 Tasks

### 🟢 Task 1

Take a look at what is inside the `workspace` directory.

---

### 🟢 Task 2

Now look inside the `documents` folder.

---

### 🟢 Task 3

Read the file `notes.txt`.

---

### 🟢 Task 4

There is a hidden secret in a subfolder.

Find out what is inside the `secret` directory.

---

### 🟢 Task 5

Read the file that contains the secret code.

---

### 🟢 Bonus (optional)

Check what is inside the `logs` directory and read the log file.

---

## 🧠 Hint

You never need to change your current directory.

👉 Always start your path with:

```bash
workspace/...
```

---

## 🆘 Stuck?

Try combining what you already know:

* `ls` shows what exists
* `cat` reads files
* paths can go through multiple folders

Example:

```bash
cat workspace/documents/notes.txt
```

---


## 🚀 What you learned

* You don’t need to move into directories to work with them
* Commands can directly work with paths
* You can navigate structures mentally instead of physically

👉 This is a core Linux skill.


---

## 🧩 Bonus Challenge (hard)

Time to combine everything you’ve learned so far.

> The secret from Level 1 is still there.
> Can you read it from here?

👉 You are NOT allowed to use `cd`.

---

## 💡 Hint

There is a special path element:

```bash
..
```

This means:

> go one directory up

Example:

```bash
ls folder/subfolder/..
```

This shows the content of `folder`.

---

## 🎯 Task

From your current position (`02-paths`),
read the secret file from **Level 1**.

---

## 🆘 Stuck?

Think about:

* where Level 1 is located relative to your current directory
* how to move "up" in the directory tree
* how to combine multiple path elements

---

## 🧠 What you just learned

* `..` is part of a path
* paths can go **up and down**
* you can access files anywhere relative to your position

👉 This is how real-world CLI usage works.

