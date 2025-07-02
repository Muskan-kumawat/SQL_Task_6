# Task 6: SQL Subqueries and Nested Queries

## 📋 Objective:
The goal of this task is to learn and apply **subqueries and nested queries** in SQL to retrieve and analyze data from multiple related tables in the `Library` database.

## 📂 Database Used:
- **Authors**
- **Books**
- **Students**
- **IssuedBooks**

## ✅ Queries Explained:


### 1. Subquery in SELECT:
Displays each student's name along with the total number of books they have issued.
![1  Subquery Select](https://github.com/user-attachments/assets/a2f59ac0-d4e7-497f-b98c-f9be763594b6)


### 2. Subquery in WHERE:
Find names of students who issued books by 'J.K. Rowling'.
![2  Subquery Where](https://github.com/user-attachments/assets/4b437a9e-83cb-42a6-95dd-4325a912519f)


### 3. Subquery with EXISTS: 
Get all books that have been issued at least once.
![3  Subquery Exists](https://github.com/user-attachments/assets/f523cee7-cde8-475b-8afb-c86d0a72e770)


### 4. Subquery in FROM clause: 
Find total books issued by each student.
![4  Subquery From](https://github.com/user-attachments/assets/f47652eb-791f-4de3-ade0-0f24191dcaa2)


### 5. Correlated Subquery: 
Find students who issued more books than the average books per student.
![5  Correlated subquery](https://github.com/user-attachments/assets/528e6d54-bf8d-4366-9377-6d730b07cfb4)

