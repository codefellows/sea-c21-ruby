## General Guidelines

* Use soft-tabs with a two space indent
* Keep lines fewer than 80 characters
* Never leave trailing whitespace
* End each file with a blank newline


##### Preferences for Sublime Text 2

Navigate to the following menu:

```
Sublime Text 2 > Preferences > Settings - User
```

Then copy and paste the following JSON object:

```json
{
  "translate_tabs_to_spaces": true,
  "tab_size": 2,
  "rulers": [80],
  "trim_trailing_white_space_on_save": true,
  "ensure_newline_at_eof_on_save": true
}
```

Don't forget to save the file.


#### Use spaces around operators

```ruby
# bad
sum=1+2

# good
sum = 1 + 2
```


#### Use shorthand self assignment operators whenever applicable

```ruby
# bad
x = x + y
x = x - y
x = x * y
x = x / y
x = x % y
x = x ** y
x = x || y
x = x && y

# good
x += y
x -= y
x *= y
x /= y
x %= y
x **= y
x ||= y
x &&= y
```


#### No spaces after ( or before )

```ruby
# bad
title.center( 50 )

# good
title.center(50)
```


#### Omit parentheses for methods with no arguments

```ruby
# bad
name.length()

# good
name.length
```


#### Omit parentheses for "keyword" methods

```ruby
# bad
puts(42)

# good
puts 42
```


#### Use snake case for naming variables

```ruby
# bad
firstName = 'Sierra'

# good
first_name = 'Sierra'
```


#### Use snake_case for naming files

```ruby
# bad
helloWorld.rb

# good
hello_world.rb
```
