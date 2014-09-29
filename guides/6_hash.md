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


#### Avoid using a comma after the last item of a literal

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
some_hash ["key"]

# good
some_hash["key"]
```


#### No spaces after `[` or before `]`

```ruby
# bad
some_hash[ "key" ]

# good
some_hash["key"]
```


#### Prefer `size` over `length` and `count`

```ruby
# bad
some_hash.length
some_hash.count

# good
some_hash.size
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
some_hash.each { |k, v| puts v }

# good
some_hash.each { |_, v| puts v }
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
{ "two" => 2, "one" => 1 }.each { |k, v| puts "#{k} is #{v}" }

# good
{ "one" => 1, "two" => 2 }.each { |k, v| puts "#{k} is #{v}" }
```


#### Never modify while iterating

```ruby
some_hash = { "one" => 1, "two" => 2 }

# bad
some_hash.each { |key, value| some_hash[key] = value + 1 }

# good
temp = {}
some_hash.each { |key, value| temp[key] = value + 1 }
```
