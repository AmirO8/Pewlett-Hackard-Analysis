-- Retirement Titles
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
On e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Unique Titles
SELECT DISTINCT ON (ri.emp_no) ri.emp_no,
ri.first_name,
ri.last_name,
ri.title
INTO unique_titles
FROM retirement_titles as ri
ORDER BY ri.emp_no ASC, ri.to_date DESC;

SELECT * FROM retirement_titles
SELECT * FROM unique_titles

SELECT * FROM employees

-- Retiring Titles
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles

SELECT DISTINCT ON (e.emp_no,de.emp_no,ti.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de 
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility
