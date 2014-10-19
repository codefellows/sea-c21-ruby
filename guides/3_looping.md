## Looping Guidelines


#### Favor `until` over `while` for negative conditions

```ruby
# bad
year = 1974

while year != 2014
  puts 'Maybe next year'
  year += 1
end

# good
year = 1974

until year == 2014
  puts 'Maybe next year'
  year += 1
end
```


#### Always put the condition on the same line as the `while/until`

```ruby
# bad
count = 0

while
  count < 10
  puts 'Go Hawks!'
  count += 1
end

# good
count = 0

while count < 10
  puts 'Go Hawks!'
  count += 1
end
```


#### Don't use parentheses around the condition of an `while/until`

```ruby
# bad
count = 0

while (count < 10)
  puts 'Go Hawks!'
  count += 1
end

# good
count = 0

while count < 10
  puts 'Go Hawks!'
  count += 1
end
```


#### Use `loop` instead of `while/until` when you need an infinite loop

```ruby
# bad
while true
  puts 'Go Hawks!'
end

# good
loop do
  puts 'Go Hawks!'
end
```


#### For post-loop tests, use `loop` with `break`

```ruby
# bad
while true
  puts "Who's your favorite team?"
  input = gets.chomp
  break if input.downcase == 'seahawks'
end

# good
loop do
  puts "Who's your favorite team?"
  input = gets.chomp
  break if input.downcase == 'seahawks'
end
```
