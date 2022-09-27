# Reinforcement

## Handle exceptions

An exception represents an error condition in a program. Exceptions provide a mechanism for stopping the execution of a program.

```ruby
begin
    #... process, may raise an exception
rescue =>
    #... error handler
else
    #... executes when no error
ensure
    #... always executed
end
```

The code between “begin” and “rescue” is where a probable exception might occur. If an exception occurs, the rescue block will execute.
