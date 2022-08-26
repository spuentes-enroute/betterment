# Betterment exam - Second Part
1. Define three ways of declaring and instancing a string.\
**String.new("First way of declare a string")\
String("Second way")\
"Just another example of string"**

2. What does gsub does?\
**Replace the substring in the original string an returns the result**

3. What is a symbol?\
**It's a unique value or key of an object**

4. If we define three symbols, with the same value, :example, and the second has object id 437768 what would the object_id of the other two would be?\
**If these symbols are created outside of a hash then they will have different objects ids**

5. What is reflection in programming?\
**This type of programming allows to inspect the program at runtime**

6. Define the usage of the three metaprogramming methods.\
**call: Declare an anonymus function and exec**

7. How do we access the symbols table?
**By typing: `Symbol.all_symbols`**

8. How do we define a hash?\
**La sintaxis sería algo como:\
`hash = {0 => "example", 1 => "value", 2 => "test"}`**

9. Define three methods for a hash and their usage.\
**hash[key]: Get the value of the hash by key\
delete: Remove the element of the param key\
each: Iterates over the items of the hash table**

10. How do we define and instance a Time variable?\
**By typing: `Time.new`**

11.  How do we access the day of the time?\
**Using `day` method. Example: `my_time.day`**

12.  Elaborate an script that has all requirements to run and exemplify the usage of three methods for Date. Please consider you would need to store the Date in a variable.\
**my_date = Date.today;\
my_date.monday? # check if the date is the same as the specified in the method\
my_date.month # returns the month of the date\
my_date.to_time # returns the date with the ISO format**

13.  What is ActiveSupport?\
**It's a collection of classes and methods for the Ruby programming language**

14.  How do we format a string in a single line?\
**`name="Saul"`\
`puts "Hi %s, what are you thinking?" % [name]`**