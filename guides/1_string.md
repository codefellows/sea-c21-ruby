## String Guidelines


#### Use single-quoted strings by default

```ruby
# bad
"Hello world"

# good
'Hello world'
```


#### Use double-quoted strings to handle content with a single-quote

```ruby
# bad
'I\'ll be back'

# good
"I'll be back"
```


#### Use double-quoted strings to handle special escape characters

```ruby
# doesn't work
'\nGoodbye'

# works
"\nGoodbye"
```


#### Use double-quoted strings to handle string interpolation

```ruby
first_name = 'Sierra'

# doesn't work
'Hello #{first_name}'

# works
"Hello #{first_name}"
```


#### Prefer string interpolation instead of string concatenation

```ruby
first_name = 'Sierra'

# bad
first_name + ' the answer is ' + 42.to_s

# good
"#{first_name} the answer is #{42}"
```
