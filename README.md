# Pewlett-Hackard-Analysis
SQL

## Analysis
To find the employees that are eligible for retirement and the mentorship program.
![ERD](https://github.com/AmirO8/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

## Results

- Senior Engineers have the highest number of potential retirees at 29,414
- Senior Staff have the second highest number of potenetial retirees at 28,254
- Engineers are thrid with 14,222
- Staff are fourth with 12,243
- Techinique leaders are fifth with 4,502
- Assistant Engineers are sixith with 1,761
- Managers have the least amount of potential retirees at 2
- The total number of potential retirees are 90,398. WOW!

## Summary
Using the query below we can see how many Male and Female employees our company has.
- SELECT COUNT (e.gender), e.gender
- INTO gender
- FROM employees as e
- GROUP BY e.gender
- ORDER BY COUNT DESC;

There are 179,973 men and 120,051 women.

Next I can join the new gender table with unique titles to get the a unique gender table to show the gender of each retiring employee.
- SELECT e.gender,
	- e.first_name,
	- e.last_name,
	- ut.title
- INTO unique_gender_titles2
- FROM unique_titles as ut
- INNER JOIN employees as e
- ON (e.emp_no = ut.emp_no);


There are 1,549 employees eligible for the mentorship. There is going to have to be a lot of people hired or promoted if they want to keeep the company at the same employeement number. This is all based on if those potential retirees actually retire.

