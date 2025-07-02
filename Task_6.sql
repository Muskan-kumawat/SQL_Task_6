-- Task 6 Subqueries and Nested Queries

-- 1. Subquery in SELECT: Show each student's name along with total books issued
SELECT name,
	(SELECT COUNT(*) from IssuedBooks WHERE IssuedBooks.studentId = Students.StudentId) AS Total_Issued_Books
FROM Students;

-- 2. Subquery in WHERE: Find names of students who issued books by 'J.K. Rowling'
SELECT name 
FROM Students
WHERE studentID IN (
	SELECT studentId
    FROM IssuedBooks
    WHERE bookId IN (
		SELECT bookId
        FROM Books
        WHERE authorId = (
			SELECT authorID
            FROM Authors
            Where name = 'J.K. Rowling'
        )
    )
);

-- 3. Subquery with EXISTS: Get all books that have been issued at least once

SELECT bookId, title
FROM Books AS b
WHERE EXISTS (
	SELECT 1
    FROM IssuedBooks AS i
    WHERE i.bookId = b.bookId);

-- 4. Subquery in FROM clause: Find total books issued by each student

SELECT s.studentId, s.name, b.Total_Books
FROM Students AS s
JOIN (
	SELECT count(*) AS Total_Books, studentID 
	FROM issuedbooks
    GROUP BY studentId
    )as b
ON s.studentId = b.studentId;

-- 5. Correlated Subquery: Find students who issued more books than the average books per student

SELECT name
FROM Students s
WHERE (SELECT COUNT(*) FROM IssuedBooks i WHERE i.studentID = s.studentID) > 
      (SELECT AVG(book_count) FROM (
          SELECT COUNT(*) AS book_count FROM IssuedBooks GROUP BY studentID
      ) AS avg_books);






 
 