**A foreign key in SQL is a constraint that enforces *referential integrity* between two tables, ensuring that values in the child table always correspond to valid entries in the parent table. It prevents invalid data insertion, restricts unsafe deletions, and maintains consistency across relationships.**

---

## 🔑 Core Concepts of Foreign Keys

- **Definition**:  
  A foreign key is a column (or set of columns) in one table that refers to the primary key in another table.  
  - **Parent table** → contains the primary key.  
  - **Child table** → contains the foreign key.

- **Referential Integrity**:  
  Ensures that every foreign key value in the child table exists in the parent table.  
  Example: An `Orders` table referencing `CustomerID` in the `Customers` table.

- **Constraints**:  
  - Prevents inserting values in the child table that don’t exist in the parent.  
  - Prevents deleting parent rows if child rows depend on them (unless cascading rules are applied).

---

## ⚙️ Foreign Key Actions

| Action Type | Description | Example Use Case |
|-------------|-------------|------------------|
| **CASCADE** | Automatically propagates changes (update/delete) from parent to child. | Deleting a customer deletes all their orders. |
| **SET NULL** | Sets child foreign key values to `NULL` if parent is deleted/updated. | If a course is removed, enrolled students’ `course_id` becomes `NULL`. |
| **SET DEFAULT** | Assigns a default value to child foreign key when parent changes. | Defaulting to a “general category” if the referenced category is deleted. |
| **RESTRICT / NO ACTION** | Prevents deletion/update in parent if child rows exist. | Stops deleting a product if orders reference it. |

---

## 📐 Syntax Example

```sql
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
```

---

## 🚨 Important Notes

- **Multiple Foreign Keys**: A table can have more than one foreign key, referencing different parent tables.  
- **Composite Foreign Keys**: Can reference multiple columns if the parent has a composite primary key.  
- **Indexing**: Foreign keys don’t automatically create indexes; adding them improves performance.  
- **Circular References**: Avoid complex chains of foreign keys that can cause dependency loops.  
- **Nullability**: Foreign key columns can be `NULL` unless explicitly restricted.

---

## 📌 Key Takeaways

- Foreign keys **link tables** and enforce **data consistency**.  
- Use **CASCADE** carefully—it can cause large-scale deletions if not managed.  
- Always design foreign key relationships with **business logic in mind** (e.g., should deleting a parent automatically delete children?).  
- They are essential for **normalized database design** and preventing orphan records.  

---