## Branching Guidelines


#### Use `!` instead of `not`

```ruby
# bad
not true

# good
!true
```


#### Favor modifier usage of `if/unless` when you have a single-line body

```ruby
# bad
if some_condition
  do_something
end

# good
do_something if some_condition
```


#### Favor `unless` over `if` for negative conditions

```ruby
# bad
do_something if !some_condition

# bad
do_something if not some_condition

# good
do_something unless some_condition
```


#### Never use `unless` with `else`

```ruby
# bad
unless grade >= 80
  puts 'fail'
else
  puts 'pass'
end

# good
if grade >= 80
  puts 'pass'
else
  puts 'fail'
end
```


#### Always put the condition on the same line as the `if/unless`

```ruby
# bad
if
  some_condition
  do_something
  do_something_else
end

# good
if some_condition
  do_something
  do_something_else
end
```


#### Don't use parentheses around the condition of an `if/unless`

```ruby
# bad
if (chapter == 8)
  # body omitted
end

# good
if chapter == 8
  # body omitted
end
```
