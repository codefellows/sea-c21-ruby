## Hash Guidelines

#### One space after `{` and before `}`

```ruby
# bad
{"one" => 1, "two" => 2}

# good
{ "one" => 1, "two" => 2 }
```


#### One space before and after `=>`

```ruby
# bad
{ "one"=>1, "two"=>2 }

# good
{ "one" => 1, "two" => 2 }
```


#### No comma after the last key-value pair

```ruby
# bad
{ "one" => 1, "two" => 2, }

# good
{ "one" => 1, "two" => 2 }
```


#### Align `=>` for multi-line Hash literals

```ruby
# bad
{
  "one" => 1,
  "two" => 2,
  "three" => 3
}

# good
{
  "one"   => 1,
  "two"   => 2,
  "three" => 3
}
```


#### No spaces before `[`

```ruby
# bad
numbers = { "one" => 1, "two" => 2 }
numbers ["one"]

# good
numbers = { "one" => 1, "two" => 2 }
numbers["key"]
```


#### No spaces after `[` or before `]`

```ruby
# bad
numbers = { "one" => 1, "two" => 2 }
numbers[ "one" ]

# good
numbers = { "one" => 1, "two" => 2 }
numbers["one"]
```


#### Prefer `size` over `length` and `count`

```ruby
# bad
numbers.length
numbers.count

# good
numbers.size
```


#### Prefer `{...}` over `do...end` for single-line iterator blocks

```ruby
# bad
{ "one" => 1, "two" => 2 }.each do |key, value|
  puts key + value
end

# good
{ "one" => 1, "two" => 2 }.each { |k, v| puts k + v }
```

**TIP:** Name the parameters `k` and `v` for single-line iterator blocks


#### Use `_` for unused block parameters

```ruby
# bad
{ "one" => 1, "two" => 2 }.each { |k, v| puts v }

# good
{ "one" => 1, "two" => 2 }.each { |_, v| puts v }
```


#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  if value >= 2
    puts key
  end
end

# good
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  next if value < 2
  puts key
end
```


#### Use `break` to prematurely exit an iterator

```ruby
# bad
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  if value < 2
    puts key
  end
end

# good
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  break if value >= 2
  puts key
end
```


#### Rely on the definition order

```ruby
# bad
{ "February" => 28, "Janurary" => 31 }.each { |k, v| puts "#{k} is #{v}" }

# good
{ "Janurary" => 31, "February" => 28 }.each { |k, v| puts "#{k} is #{v}" }
```
