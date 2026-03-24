**In SQL and data warehousing, a *Fact Table* stores measurable, quantitative data (like sales, revenue, or counts), while a *Dimension Table* provides descriptive context (like product details, customer demographics, or time periods). Together, they form the backbone of analytical schemas such as star and snowflake models.**

---

## 🔑 Core Concepts

### Fact Table
- **Definition**: Central table in a schema that contains *measures* (numeric values) and *foreign keys* to dimension tables.
- **Purpose**: Records business events or transactions.
- **Examples**:
  - Sales amount, quantity sold, profit.
  - Flight bookings, ticket prices, seat counts.
- **Characteristics**:
  - Contains fewer attributes (mostly numbers + foreign keys).
  - Grows rapidly in size (millions of rows).
  - Supports aggregation (SUM, AVG, COUNT).

### Dimension Table
- **Definition**: Supporting table that contains *descriptive attributes* related to facts.
- **Purpose**: Provides context for analysis.
- **Examples**:
  - Product details (name, category, brand).
  - Customer details (name, age, location).
  - Time details (day, month, year).
- **Characteristics**:
  - Contains more attributes than fact tables.
  - Relatively smaller in size.
  - Used for filtering, grouping, and labeling facts.

---

## 📊 Comparison Table

| Aspect              | Fact Table                              | Dimension Table                          |
|---------------------|------------------------------------------|------------------------------------------|
| **Data Type**       | Numeric, measurable values               | Textual, descriptive attributes           |
| **Purpose**         | Stores metrics/events                    | Provides context for metrics              |
| **Keys**            | Foreign keys to dimensions               | Primary keys referenced by facts          |
| **Size**            | Very large (millions of rows)            | Smaller (thousands of rows)               |
| **Examples**        | Sales amount, ticket price, revenue      | Product name, customer city, date         |
| **Operations**      | Aggregations (SUM, AVG, COUNT)           | Filtering, grouping, categorization       |

---**In SQL and data warehousing, a *Fact Table* stores measurable, quantitative data (like sales, revenue, or counts), while a *Dimension Table* provides descriptive context (like product details, customer demographics, or time periods). Together, they form the backbone of analytical schemas such as star and snowflake models.**

---

## 🔑 Core Concepts

### Fact Table
- **Definition**: Central table in a schema that contains *measures* (numeric values) and *foreign keys* to dimension tables.
- **Purpose**: Records business events or transactions.
- **Examples**:
  - Sales amount, quantity sold, profit.
  - Flight bookings, ticket prices, seat counts.
- **Characteristics**:
  - Contains fewer attributes (mostly numbers + foreign keys).
  - Grows rapidly in size (millions of rows).
  - Supports aggregation (SUM, AVG, COUNT).

### Dimension Table
- **Definition**: Supporting table that contains *descriptive attributes* related to facts.
- **Purpose**: Provides context for analysis.
- **Examples**:
  - Product details (name, category, brand).
  - Customer details (name, age, location).
  - Time details (day, month, year).
- **Characteristics**:
  - Contains more attributes than fact tables.
  - Relatively smaller in size.
  - Used for filtering, grouping, and labeling facts.

---

## 📊 Comparison Table

| Aspect              | Fact Table                              | Dimension Table                          |
|---------------------|------------------------------------------|------------------------------------------|
| **Data Type**       | Numeric, measurable values               | Textual, descriptive attributes           |
| **Purpose**         | Stores metrics/events                    | Provides context for metrics              |
| **Keys**            | Foreign keys to dimensions               | Primary keys referenced by facts          |
| **Size**            | Very large (millions of rows)            | Smaller (thousands of rows)               |
| **Examples**        | Sales amount, ticket price, revenue      | Product name, customer city, date         |
| **Operations**      | Aggregations (SUM, AVG, COUNT)           | Filtering, grouping, categorization       |

---

## 🛠 Example in SQL (Airline Context)

Imagine you’re analyzing airline bookings (relevant to your domain):

```sql
-- Fact Table: Booking_Facts
Booking_ID | Customer_ID | Flight_ID | Date_ID | Ticket_Price | Seats_Booked

-- Dimension Table: Customer_Dim
Customer_ID | Name | Age | City | Country

-- Dimension Table: Flight_Dim
Flight_ID | Airline | Source | Destination | Aircraft_Type

-- Dimension Table: Date_Dim
Date_ID | Day | Month | Year | Quarter
```

A query to analyze **average ticket price by airline**:

```sql
SELECT f.Airline, AVG(b.Ticket_Price) AS Avg_Price
FROM Booking_Facts b
JOIN Flight_Dim f ON b.Flight_ID = f.Flight_ID
GROUP BY f.Airline;
```

---

## ⚠️ Key Considerations
- **Fact tables depend on dimensions**: Without dimensions, facts are meaningless numbers.
- **Granularity matters**: Decide the lowest level of detail (e.g., per booking vs. per day).
- **Schema choice**: Star schema (simpler, faster joins) vs. Snowflake schema (normalized dimensions).

---

Would you like me to **map this concept to your SQL learning repository with AdventureWorks**? That way, I can show you a concrete example using its `SalesFact` and `ProductDim` tables, which will make it easier to practice queries hands-on.


## 🛠 Example in SQL (Airline Context)

Imagine you’re analyzing airline bookings:

```sql
-- Fact Table: Booking_Facts
Booking_ID | Customer_ID | Flight_ID | Date_ID | Ticket_Price | Seats_Booked

-- Dimension Table: Customer_Dim
Customer_ID | Name | Age | City | Country

-- Dimension Table: Flight_Dim
Flight_ID | Airline | Source | Destination | Aircraft_Type

-- Dimension Table: Date_Dim
Date_ID | Day | Month | Year | Quarter
```

A query to analyze **average ticket price by airline**:

```sql
SELECT f.Airline, AVG(b.Ticket_Price) AS Avg_Price
FROM Booking_Facts b
JOIN Flight_Dim f ON b.Flight_ID = f.Flight_ID
GROUP BY f.Airline;
```

---

## ⚠️ Key Considerations
- **Fact tables depend on dimensions**: Without dimensions, facts are meaningless numbers.
- **Granularity matters**: Decide the lowest level of detail (e.g., per booking vs. per day).
- **Schema choice**: Star schema (simpler, faster joins) vs. Snowflake schema (normalized dimensions).

---
