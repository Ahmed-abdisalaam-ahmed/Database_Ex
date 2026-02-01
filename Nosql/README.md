# ✅ **What is MongoDB and Why NoSQL?**

---

## 🎯 **Lesson Objectives**

By the end of this lesson, students will:

- Understand what MongoDB is and how it compares to SQL
- Know the difference between relational (SQL) and document-based (NoSQL) databases
- Learn what BSON, collections, and documents are
- Recognize when to use MongoDB in full-stack applications
- Install MongoDB (on macOS using Homebrew or standalone, and on Windows)
- Use MongoDB Shell and Compass to interact with databases

---

## 🧠 1. What is MongoDB?

> MongoDB is a NoSQL document database that stores data as JSON-like documents instead of rows and tables.
> 

It’s used in many modern applications (especially with Node.js, Express, React, etc.) because:

- It handles flexible, unstructured data well
- It’s fast for reads and writes
- It works well with JavaScript (data = JSON!)

---

## 🔄 2. MongoDB vs SQL

| Concept | SQL (Relational DB) | MongoDB (NoSQL DB) |
| --- | --- | --- |
| Structure | Tables, rows, columns | Collections, documents |
| Schema | Strict, fixed | Flexible, dynamic |
| Language | SQL | MongoDB Query Language (JSON-based) |
| Joins | Built-in JOINs | Manual via references or `$lookup` |
| Best for | Structured, transactional data | Nested, evolving data |

---

## 📦 3. Documents and Collections

- A **document** is a record, stored as JSON
- A **collection** is a group of related documents
- MongoDB uses **BSON** (Binary JSON) internally for performance

### 🧾 Example document:

```json
{
  "_id": ObjectId("..."),
  "name": "Ayaan",
  "email": "ayaan@gmail.com",
  "age": 22,
  "courses": ["React", "Node.js"]
}

```

---

## 💻 4. Installing MongoDB (macOS + Windows)

### 🟢 macOS Option A: Install via Homebrew (Recommended)

### Step 1: Install Homebrew

If you don’t have it yet, run this in Terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

Then verify:

```bash
brew --version

```

### Step 2: Add MongoDB tap

```bash
brew tap mongodb/brew

```

### Step 3: Install MongoDB

```bash
brew install mongodb-community

```

### Step 4: Start MongoDB server

```bash
brew services start mongodb/brew/mongodb-community

```

### Step 5: Launch MongoDB shell

```bash
mongosh

```

---

### 🟢 macOS Option B: Standalone MongoDB Shell (no server)

1. Download from: https://www.mongodb.com/try/download/shell
2. Select:
    - OS: **macOS**
    - Format: `.tgz`
3. Extract it:

```bash
tar -xvzf mongosh-*-darwin-*.tgz

```

1. Move to path:

```bash
sudo mv mongosh-*/bin/mongosh /usr/local/bin/
sudo chmod +x /usr/local/bin/mongosh

```

1. Run:

```bash
mongosh

```

---

### 🔵 Windows Installation

1. Download from: https://www.mongodb.com/try/download/community
2. Choose:
    - OS: **Windows**
    - Package: **MSI Installer**
3. Follow the installation steps (includes MongoDB Server, mongosh, Compass)
4. Run:

```bash
mongosh

```

Also, open **MongoDB Compass** from Start Menu to use the GUI.

---

## 🔧 5. Creating a Collection and Inserting Data

In MongoDB Shell:

```jsx
use dugsiiye

db.students.insertOne({
  name: "Ayaan",
  email: "ayaan@gmail.com",
  age: 22,
  courses: ["React", "Node.js"]
});

```

- `use dugsiiye` creates or switches to the database
- `db.students.insertOne()` inserts a document
- MongoDB creates the `students` collection automatically

---

## 📍 6. Why Use MongoDB?

| Use Case | Why MongoDB Works Well |
| --- | --- |
| Blogs, Comments | Nested content, unstructured |
| Realtime apps | Fast insert/update |
| Products/Categories | Dynamic fields |
| User profiles | Flexible schema per user |

---

## 🧪 7. Practice Tasks

1. Install MongoDB via your method of choice:
    - macOS (Homebrew or Standalone)
    - Windows (MSI)
2. Open MongoDB Shell (`mongosh`)
3. Create a `dugsiiye` database and `students` collection
4. Insert 2–3 student documents with fields:
    - `name`, `email`, `age`, `courses` (array)
5. View documents:

```jsx
db.students.find();

```

Optional:

- Add `phone`, `address`, etc. to test flexibility

---

## 📝 Student Task Sheet

- Insert at least 3 students
- Each should have 4+ fields
- Vary structure (some with extra fields)
- Query with `find()`
- Describe what makes MongoDB schema-less

---

## 📘 Summary

| SQL Term | MongoDB Equivalent |
| --- | --- |
| Table | Collection |
| Row | Document |
| Column | Field |
| Query | JSON-style query |

MongoDB is ideal for flexible, fast development using JavaScript and JSON.

---

## 🔜 Coming Up

**Lesson 2 — CRUD Operations & MongoDB Compass**

- Practice with `insert`, `find`, `update`, and `delete`
- Use Compass to visualize and edit data
- Filter and project documents

---

Would you like this formatted as a PDF or interactive student guide?