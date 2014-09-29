## String Guidelines


#### Prefer string interpolation instead of string concatenation

```ruby
# bad
first_name + " the answer is " + 42.to_s

# good
"#{first_name} the answer is #{42}"
```


#### Prefer double-quoted strings

```ruby
# bad
'I\'ll be back'

# good
"I'll be back"
```


##### Handles string interpolation

```ruby
# doesn't work
'Hello #{name}'

# works
"Hello #{name}"
```


##### Handles special escape characters

```ruby
# doesn't work
'\nGoodbye'

# works
"\nGoodbye"
```


##### Use single-quoted strings if it contains a "

```ruby
# bad
"\"Be yourself – everyone else is taken.\" - Anonymous"

# good
'"Be yourself – everyone else is taken." - Anonymous'
```
