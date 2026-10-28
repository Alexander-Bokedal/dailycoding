# 008 - Gradebook (mixed challenge, no hints)

Edit `main.lua` in this folder. Type it by hand!

You are building a small report for a class.

Start with this data, as a list of tables:

    Anna  : 95, 88, 92
    Ben   : 72, 65, 80
    Clara : 58, 49, 63
    David : 85, 90, 78

1. Store the students in a table. Each student has a `name` and a `scores` list.
2. Write `average(scores)` that returns the average of a list of numbers.
3. Write `letterGrade(avg)` that returns:
   - `"A"` for 90 or more, `"B"` for 80 or more, `"C"` for 70 or more, `"F"` otherwise.
4. Write `highest(scores)` that returns the highest score in a list (don't use `math.max`).
5. Loop over the students and print one line each, formatted like:

       Anna     avg 91.7  best 95  grade A

   (name padded so the columns line up, average with one decimal)
6. Print how many students passed (grade C or better) and how many failed.
7. Write `addStudent(name, scoreString)` that takes a string like `"70,80,90"`, splits it on commas, converts the pieces to numbers, and adds a new student to the table. Add `"Eva"` with `"100,95,98"` and print the report again.
8. Write `findStudent(name)` that returns the student's table, or `nil` if not found. Print Clara's average, and print a message for a student who doesn't exist.
9. Print the name of the student with the best average, in UPPERCASE.
