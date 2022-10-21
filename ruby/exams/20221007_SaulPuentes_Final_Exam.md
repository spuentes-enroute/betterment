1. In Ruby, how do we return multiple variables and assign them where we use that method in particular?
   **You can return an array and assign or pass values by parameters to the method.**
2. Elaborate on the description of two design patterns.
3. Define three form helpers

```ruby
<%= form.label :name, "Name" %>
<%= form.text_field :name %>
<%= form.password_field :password %>
```

4. What is the Rubocop convention for constants in Ruby?
   **All leter must be capitalized and use snake case for spaces**
5. What are keyword splat arguments?
   **These are the symbols of the hashes**
6. How do we define an inclusive range?
   **We can do that by typing double dots between the numbers of the range.**\
   **Example: (1..20)**
7. What is the preferred way to interpolate variables in a string?
   **By using `#{}`in the string.**\
   **Example: "Hello my name is #{name}"**
8. Explain what lambdas are and exemplify how they are declared.
9. What is the symbols table and how do we access to it?
   **From rails console we need to type the following command:**\
   `Symbol.all_symbols`
10. For what is the method strftime?
    **Given a string in a date format returns a date object**
11. What is ActiveSupport and exemplify some useful methods available through it.
12. Elaborate on three software development best practices.

- Use descriptive names of variables or functions
- DRY: Don't repeat code or logic through the application instead create generic code blocks that can be reusable.
- Test your code or write unit test

13. What is the difference between if, unless, while, and until.
    **IF will execute the code block if the condition is true. UNLESS is the opposite to IF will enter if it's false.**\
    **WHILE will keep running if the condition is fulfilled. UNTIL will execute the code until the condition is satisfied.**
14. Exemplify the usage of downto.
    **Example:**

```ruby
  num = 5
  puts num.downto(1) # it will returns 5 4 3 2 1 5
```

15. Explain the main concepts of SOLID.
16. Define what is the object space.
    **The object space gives you access to the living objects of the application as well as methods to interact with them.**
17. What is metaprogramming and explain the three methods for it?
18. How do we recover from Memory Loops and Performance Issues?
19. What is Authorized Persona?
    **It's a ruby gem developed by Betterment to authenticate users permissions on rails application**
20. How do we access to the internationalization translate method?
21. What does name-spacing a resource mean?
    **Allows you to create nested controller and generate the properly routes**
22. How do we rescue from errors in controllers?
23. What are filters and how do we avoid using them in a certain action?
24. How do we bring objects through batches in ActiveRecord?
25. Explain what is Sidekiq?
    **It's a ruby gem that allows you to manage threads or background process on your applications**
26. How do we define three different relationships in a Model?
27. Explain what is MVC.
    **The Model-View-Controller is a design pattern that separates database entities, user interfaces and business logic into different layers. In this way we can have a better application structure of the folders with easy to read files.**
28. How do we replace text in a string using Regex?
29. What is Ruby on Rails?
    **It's a web framework created on Ruby based on the MVC model**
30. Elaborate on three best practices for Ruby on Rails.

- Follow the naming conventions
-
