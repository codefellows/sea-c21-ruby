## Array Guidelines


#### When defining an Array, no spaces after `[` or before `]`

```ruby
# bad
friends = [ 'Julia', 'Chris', 'Anne Marie' ]

# good
friends = ['Julia', 'Chris', 'Anne Marie']
```


#### When defining an Array, one space after `,`

```ruby
# bad
friends = ['Julia','Chris','Anne Marie']

# good
friends = ['Julia', 'Chris', 'Anne Marie']
```


#### Always define an Array on same line as the assignment

```ruby
# bad
friends =
  ['Julia', 'Chris', 'Anne Marie']

# good
friends = ['Julia', 'Chris', 'Anne Marie']
```


#### Use multi-line definition when elements can't fit on one line

```ruby
# bad
friends = ['Julia', 'Chris', 'Anne Marie', 'Sierra', 'Ivan',
  'Sarah', 'Mary', 'Paul']

# good
friends = [
  'Julia',
  'Chris',
  'Anne Marie',
  'Sierra',
  'Ivan',
  'Sarah',
  'Mary',
  'Paul'
]
```


#### Use `%w()` when defining an Array of single-word Strings

```ruby
# bad
friends = ['Julia', 'Chris', 'Sierra']

# good
friends = %w(Julia Chris Sierra)
```


#### When accessing an Array, no spaces before `[`

```ruby
# bad
friends = ['Julia', 'Chris', 'Anne Marie']
friends [0]

# good
friends = ['Julia', 'Chris', 'Anne Marie']
friends[0]
```


#### When accessing an Array, no spaces after `[` or before `]`

```ruby
# bad
friends = ['Julia', 'Chris', 'Anne Marie']
friends[ 0 ]

# good
friends = ['Julia', 'Chris', 'Anne Marie']
friends[0]
```


#### Prefer `size` over `length` and `count`

```ruby
# bad
friends.length
friends.count

# good
friends.size
```


#### Prefer `{...}` over `do...end` for single-line iterator blocks

```ruby
# bad
[1, 2, 3].each do |element|
  puts element
end

# good
[1, 2, 3].each { |e| puts e }
```

**TIP:** Name the parameter `e` for single-line iterator blocks


#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
[1, 2, 3].each do |element|
  if element >= 2
    puts element
  end
end

# good
[1, 2, 3].each do |element|
  next if element < 2
  puts element
end
```


#### Use `break` to prematurely exit an iterator

```ruby
# bad
[1, 2, 3].each do |element|
  if element < 2
    puts element
  end
end

# good
[1, 2, 3].each do |element|
  break if element >= 2
  puts element
end
```
