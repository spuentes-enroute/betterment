# First Betterment course examn

1. Please define a raw abstract of a transaction, it can include between 3 and 5 operations. The transaction must be rollbacked.\
**BEGIN;\
SELECT * FROM student AS st\
JOIN enrollment e ON st.id=e.id WHERE st.semester > 4;\
ROLLBACK;**


2. Please define a PostgreSQL function that returns true or false if the selected number is even.\
**
CREATE OR REPLACE FUNCTION integer_to_boolean(SMALLINT)
	RETURNS BOOLEAN 
	LANGUAGE plpgsql **AS**
	$$
	BEGIN
		IF ($1 % 2 == 0) THEN
			RETURN TRUE;
		ELSE
			RETURN FALSE;
		END IF;
	END;
	$$;
**

3. What is an aggregate function and define what do they need to work.\
**It's a function that allow us to make operations to in a set of records and return one accumulated value. They need the name of the function or operation and the column names**

4. Please define a custom aggregate function.\
** We need to create a custom function and then pass it to the aggregate defintion\
CREATE OR REPLACE AGGREGATE custom_aggregate_name(numeric(4,2))(
	INITCOND=0,
	STYPE=numeric,
	SFUNC=custom_function
)**

5. Between what clauses do the HAVING clause execute?\
**Between `GROUP BY` and `ORDER BY`**

6. What types of views are stored in memory? Please define a way to use them (not create them).\**
Standard views or materialized views**

7. How do you declare a cursor?\
**DECLARE cursor_name CURSOR FOR statement**

8. What is an asensitive cursor?\
**It's a type of cursor which means that the changes will not be reflected between the cursor and the database table**

9.  How do we define a custom cast?\
**We need to create a function and then pass it to the cast definition. Example:\
CREATE CAST (smallint as BOOLEAN) with function example_function(smallint);**

10. What command do you use to bring the commit with hash 3c94f71fdf813bc475cb13f8f90b83de9cc475cb to the current branch?\
**`git log [hash]`**

11. How do you mix the branches chore/configuration and chore/setup?\
**1. `git checkout -b chore/configuration`**\
**2. `git merge chore/setup`**

12.  How do you make a commit?\
**`git commit -m "This is the commit message"`**

13. What HTTP methods are idempotent?\
**GET, HEAD, PUT, DELETE**

14. Please define the A PIE of Object Oriented Programming.\
**It's an acronym for: Polymorphism, Inheritance and Encapsulation.**

15. Define a polymorphic method in Ruby.\
**It's a method that can be included in different classes of a same group**

16. Define the usage of super and explain what is the difference between using parenthesis or not.\
**The `super` without parenthesis send implicitly the values from the paremeters. In order to avoid that we can use `super()`**

17.  What is the difference between include and extend?\
**Include will add the methods to the instance of the class but extend will add the method to the class definition itself**

18.  Define what is a class method? \
**It's a function declared within the class and that will be useful for the class itself not the instance**

19.  Define what is an instance method?\
**It's a function that add functionality to an instance of a class**

20.  What is IRB?\
**It's the ruby interpreter. It's useful to write and test scripts before putting into a file**

21. How do we know what type of class is a variable?\
**By adding `.class` at the end of the variable name**

22. How do we define a binary number?\
**By adding `.to_s(2)` to a number. Example: 5.to_s(2) => 101**

23. What are keyword splat arguments? Define the difference with splat arguments.\
**With the first one we get the symbols of the hashes and with the second one we can access to the values of multiple parameters within function**

24. How do we define a range?\
**By typing `..` or `...` between two numbers or characters. Example: 1..10**

25. How do we modify arrays?\
**We can use a `map` function to iterate over the array items and get a new array.**

26. Define three methods for arrays and their usage.\
**push: Add an object to the end of the array\
pop: Remove the last element of the array and returns the value\
map: Iterates over every item in the array **

27.  Define three methods for Numeric and their usage.\
**even?: Returns true or false if the value it's even\
next: Returns the next consecutive number\
to_s: Cast the number to string or another string base**

28.  Define three methods for String and their usage.\
**size: Returns the length of the string
empty?: Check if it's an empty string
split(param): Returns an array splitted by the param character**

29.  Elaborate and explain the six assignment combined operators.\
+= Increase and sum the accumulator value\
-= Decrease and rest the accumulator value\
*= Multiply and accumulate the result of previous operations\
/= Divide the result over the second value\
%= Take the module result of the operation and assign the result into the variable\
**= Exponent and accumulate the result into the variable


30.   What is the spaceship operator? How does it look like?\
**The operator looks like `<=>`. It compares two objects and returns 1 if the first value is greater, 0 is both objects are equal and -1 if the second value is larger.**
