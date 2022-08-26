# Betterment examn Part III

1. How do we format a string multiple times?\
**We can use multiple identifiers and then associate them by passing an array. Example:**\
**`"My name is %s and I'm %d years old" % ["Saul", 25]`**

2. When should you use case vs if elsif else?\
**You should use case if you have to choose between more than three options.**

3. Using best practices, define an if else construct with variable a == (x % 2).even?
```ruby 
  condition = a == (x % 2).even?
  if condition
    puts "It passed the validation"
  end
```
1. Exemplify the usage of times, upto and downto.
```ruby 
2 = [1, 2, 3, 4, 5]
arr.each{ |num| 
  puts num # it will print every element on the array
}
```
5. Exemplify the usage of each.
```ruby 
20.times{ |i| 
  print "=" # it will print a separator
  STDOUT.flush
}

multiplier = 2
1.upto(10) { |i|
  puts i * 2 # it will print the series of 2
}

10.downto(1) { |i|
  puts "Countdown: %d" % i 
}
```

6. What is the difference between each and map?\
**`map` it's similar to JS, it will return a new array from the iterations**
**`each` iterates over the array but returns the same array itself**

7. Exemplify the usage of inject.
```ruby
[1, 2, 3, 4].inject(:+) => (((1 + 2)+ 3) + 4) => 10
```

8. How do we define an attribute getter and setter (use two ways)?\
**1. We can use `attr_accessor` followed by the variable name to define both methods**\
**2. We can define manually the methods on the body class**

9. How do we define a block?\
**We enclosed block using do-end or curly braces. Example:**
```ruby 
  ['A', 'B', 'C'].each do |char|
    puts char
  end
```

10.  How do we define a lambda? How do we use it?
```ruby 
  # define a lambda
  my_lambda = lambda { puts "hello" }

  # using a lambda
  my_lambda.call
```
11.  How do we define a recursive function properly?\
**We need to define first our base case scenario that will stop the recursion and call the function itself in the definition**
```ruby
def fibonacci(num)
  if num < 2
    num
  else
  
    # Recursive call
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end
```
12.  How do we define a proc and call it?\
**We can use the class `Proc` and then use `call` method. Example:**\
**`proc = Proc.new { return "Hello betterment" }`**
**`proc.call`**

1.   What is the difference between procs and lambdas?\
**The first difference is that lambda validates the number of arguments that we are passing, procs doesn't it. The second one is that procs return the value of the enclosing block, while lambda will return the last sentence of the lambda definition.**

