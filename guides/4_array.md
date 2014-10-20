## Array Guidelines


#### Always define on same line as the assignment

```ruby
# bad
friends =
  ['Julia', 'Chris', 'Anne Marie']

# good
friends = ['Julia', 'Chris', 'Anne Marie']
```


#### Use one line per element when defining a many elements

```ruby
# bad
friends = ['Julia', 'Chris', 'Anne Marie', 'Sierra', 'Ivan', 'Sarah', 'Mary', 'Paul']

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


#### When accessing, no spaces before `[`

```ruby
# bad
friends = ['Julia', 'Chris', 'Anne Marie']
friends [0]

# good
friends = ['Julia', 'Chris', 'Anne Marie']
friends[0]
```


#### When accessing, no spaces after `[` or before `]`

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


#### Prefer `each` over `for` because of their block scope

```ruby
# bad
for item in [1, 2, 3] do
  puts item
end

# item is accessible outside the for loop
item # => 3

# good
[1, 2, 3].each { |item| puts item }

# item is not accessible outside the each block
item # => NameError: undefined local variable or method `item'
```


#### Prefer `each` over `for` because of their container's scope

```ruby
# bad
item = 99

for item in [1, 2, 3] do
  puts item
end

# item is accessible outside the for loop
item # => 3

# good
item = 99

[1, 2, 3].each { |item| puts item }

# item is not accessible outside the each block
item # => 99
```


#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
[1, 2, 3].each do |item|
  if item >= 2
    puts item
  end
end

# good
[1, 2, 3].each do |item|
  next if item < 2
  puts item
end
```


#### Use `break` to prematurely exit an iterator

```ruby
# bad
[1, 2, 3].each do |item|
  if item < 2
    puts item
  end
end

# good
[1, 2, 3].each do |item|
  break if item >= 2
  puts item
end
```
