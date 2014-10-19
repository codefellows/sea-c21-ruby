## Branching Guidelines


#### Favor modifier usage of `if/unless` when you have a single-line body

```ruby
# bad
if team == 'Seahawks'
  puts 'winner'
end

# good
puts 'winner' if team == 'Seahawks'
```


#### Favor `unless` over `if` for negative conditions

```ruby
# bad
puts 'loser' if team != 'Seahawks'

# good
puts 'loser' unless team == 'Seahawks'
```


#### Never use `unless` with `else`

```ruby
# bad
unless team == 'Seahawks'
  puts 'loser'
else
  puts 'winner'
end

# good
if team == 'Seahawks'
  puts 'winner'
else
  puts 'loser'
end
```


#### Always put the condition on the same line as the `if/unless`

```ruby
# bad
if
  team == 'Seahawks'
  puts 'Go'
  puts 'Hawks!'
end

# good
if team == 'Seahawks'
  puts 'Go'
  puts 'Hawks!'
end
```


#### Don't use parentheses around the condition of an `if/unless`

```ruby
# bad
if (team == 'Seahawks')
  puts 'Go'
  puts 'Hawks!'
end

# good
if team == 'Seahawks'
  puts 'Go'
  puts 'Hawks!'
end
```
