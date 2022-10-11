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

## Alternative Quotes

### %Q

This is an alternative for double-quoted strings, when you have more quote characters in a string.Instead of putting backslashes in front of them, you can easily write:

```
>> %Q(Joe said: "Frank said: "#{what_frank_said}"")
=> "Joe said: "Frank said: "Hello!"""
```

The parenthesis “(…)” can be replaced with any other non-alphanumeric characters and non-printing characters (pairs), so the following commands are equivalent.

### %q

Used for single-quoted strings.The syntax is similar to %Q, but single-quoted strings are not subject to expression substitution or escape sequences.

```
>> %q(Joe said: 'Frank said: '#{what_frank_said} ' ')
=> "Joe said: 'Frank said: '\#{what_frank_said} ' '"
```

### %W

Used for double-quoted array elements.The syntax is similar to %Q.

```
>> %W(#{foo} Bar Bar\ with\ space)
=> ["Foo", "Bar", "Bar with space"]
```

### %w

Used for single-quoted array elements.The syntax is similar to %Q, but single-quoted elements are not subject to expression substitution or escape sequences.

```
>> %w(#{foo} Bar Bar\ with\ space)
=> ["\#{foo}", "Bar", "Bar with space"]
```

## Marshalling

The marshalling library turns Ruby object collections into byte streams, allowing them to be stored outside of the presently running script.

```ruby
text_here = 'hello world!'
ser_string = Marshal.dump(text_here) # => "\x04\bI\"\x11hello world!\x06:\x06ET"
ser_string.class                     # => String
deserialized_hello_world = Marshal.load(ser_string) # => "hello world!"
text_here.object_id                # => 80204420126112
deserialized_hello_world.object_id # => 80204419825678
```

Ejecutar un job ahora
PROC

Date.parse(“Mon, 01 Jan”)
Filters in controllers before_action

Routes
Namespace vs resources

Scope dentro de un modelo
Validations dentro de modelos

Relaciones polimorficas

Patrones de diseño en rails
Presenters -

Login
Authentication

## Notas adicionales

- El método `change` es más nuevo.
- Los métodos `up` and `down` siguen vigentes.
