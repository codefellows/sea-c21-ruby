## Symbol Guidelines


#### Use snake case for naming multi-word Symbols

```ruby
# bad
:firstName

# good
:first_name
```


#### Avoid spaces in multi-word Symbols

```ruby
# bad
:'first name'

# good
:first_name
```


#### Use `%i()` when defining an Array of single-word Symbols

```ruby
# bad
keys = [:name, :age, :location]

# good
keys = %i(name age location)
```


#### Prefer Symbols instead of Strings as Hash keys

```ruby
# bad
{ 'dogs' => 1, 'cats' => 2 }

# good
{ dogs: 1, cats: 2 }
```


#### Use the shorter syntax when Hash keys are Symbols

```ruby
# bad
{ :dogs => 1, :cats => 2 }

# good
{ dogs: 1, cats: 2 }
```


#### Use the hash-rocket syntax when Hash keys are mixed

```ruby
# bad
{ dogs: 1, 'cats' => 2 }

# good
{ :dogs => 1, 'cats' => 2 }
```
