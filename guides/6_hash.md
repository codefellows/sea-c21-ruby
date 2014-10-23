## Hash Guidelines


#### One space after `{` and before `}`

```ruby
# bad
{'dogs' => 1, 'cats' => 2}

# good
{ 'dogs' => 1, 'cats' => 2 }
```


#### One space before and after `=>`

```ruby
# bad
{ 'dogs'=>1, 'cats'=>2 }

# good
{ 'dogs' => 1, 'cats' => 2 }
```


#### No comma after the last key-value pair

```ruby
# bad
{ 'dogs' => 1, 'cats' => 2, }

# good
{ 'dogs' => 1, 'cats' => 2 }
```


#### Align `=>` for multi-line Hash literals

```ruby
# bad
{
  'dogs' => 1,
  'cats' => 2,
  'bunnies' => 3
}

# good
{
  'dogs'    => 1,
  'cats'    => 2,
  'bunnies' => 3
}
```


#### No spaces before `[`

```ruby
# bad
pets = { 'dogs' => 1, 'cats' => 2 }
pets ['dogs']

# good
pets = { 'dogs' => 1, 'cats' => 2 }
pets['dogs']
```


#### No spaces after `[` or before `]`

```ruby
# bad
pets = { 'dogs' => 1, 'cats' => 2 }
pets[ 'dogs' ]

# good
pets = { 'dogs' => 1, 'cats' => 2 }
pets['dogs']
```


#### Prefer `size` over `length` and `count`

```ruby
pets = { 'dogs' => 1, 'cats' => 2 }

# bad
pets.length
pets.count

# good
pets.size
```


#### Prefer `{...}` over `do...end` for single-line iterator blocks

```ruby
# bad
{ 'dogs' => 1, 'cats' => 2 }.each do |key, value|
  puts key + value
end

# good
{ 'dogs' => 1, 'cats' => 2 }.each { |k, v| puts k + v }
```

**TIP:** Name the parameters `k` and `v` for single-line iterator blocks


#### Use `_` for unused block parameters

```ruby
# bad
{ 'dogs' => 1, 'cats' => 2 }.each { |k, v| puts v }

# good
{ 'dogs' => 1, 'cats' => 2 }.each { |_, v| puts v }
```


#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
{ 'dogs' => 1, 'cats' => 2, 'bunnies' => 3 }.each do |key, value|
  if value >= 2
    puts key
  end
end

# good
{ 'dogs' => 1, 'cats' => 2, 'bunnies' => 3 }.each do |key, value|
  next if value < 2
  puts key
end
```


#### Use `break` to prematurely exit an iterator

```ruby
# bad
{ 'dogs' => 1, 'cats' => 2, 'bunnies' => 3 }.each do |key, value|
  if value < 2
    puts key
  end
end

# good
{ 'dogs' => 1, 'cats' => 2, 'bunnies' => 3 }.each do |key, value|
  break if value >= 2
  puts key
end
```


#### Rely on the definition order

```ruby
# bad
{ 'February' => 28, 'Janurary' => 31 }.each { |k, v| puts "#{k} is #{v}" }

# good
{ 'Janurary' => 31, 'February' => 28 }.each { |k, v| puts "#{k} is #{v}" }
```
