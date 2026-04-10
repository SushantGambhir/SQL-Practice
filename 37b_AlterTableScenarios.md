- **Changing data type (compatible)**  
  → Existing values are preserved if they can be converted.  
  Example: `INT → BIGINT` or `CHAR(10) → VARCHAR(50)` keeps the data.

- **Changing data type (incompatible)**  
  → SQL will try to convert values. If conversion fails, you may get errors or truncated data.  
  Example: `VARCHAR → INT` will fail if non-numeric strings exist.

- **Adding constraints (like NOT NULL)**  
  → If existing rows violate the constraint, the command fails unless you first update the data.

- **Setting a default value**  
  → Existing rows are not updated. The default applies only to **new inserts**.

- **Dropping a column**  
  → All values in that column are lost permanently.

- **Modifying column size**  
  → Increasing size (e.g., `VARCHAR(50) → VARCHAR(100)`) keeps all data.  
  → Decreasing size may truncate values that exceed the new limit.