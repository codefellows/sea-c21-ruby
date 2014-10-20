## Method Guidelines


#### When calling a method, no spaces before `(`

```ruby
# bad
rand (42)

# good
rand(42)
```


#### When calling a method, no spaces after `(` or before `)`

```ruby
# bad
rand( 42 )

# good
rand(42)
```


#### Omit parentheses when defining methods without parameters

```ruby
# bad
def eat()
  'Nom nom nom'
end

# good
def eat
  'Nom nom nom'
end
```


#### Use parentheses when defining methods with parameters

```ruby
# bad
def eat food
  "Mmm, this #{food} is delicious!"
end

# good
def eat(food)
  "Mmm, this #{food} is delicious!"
end
```


#### Remember, externally defined local variables do not work inside methods

```ruby
# doesn't work
food = 'crab cake'

def eat
  "Mmm, this #{food} is delicious!"
end

eat # => NameError: undefined local variable or method `food'

# does work
food = 'crab cake'

def eat(food)
  "Mmm, this #{food} is delicious!"
end

eat(food)  #=> "Mmm, this crab cake is delicious!"
```


#### Use empty lines between method definitions

```ruby
# bad
def eat(food)
  "Mmm, this #{food} is delicious!"
end
def drink(beverage)
  "Ahh, this #{beverage} is refreshing!"
end

# good
def eat(food)
  "Mmm, this #{food} is delicious!"
end

def drink(beverage)
  "Ahh, this #{beverage} is refreshing!"
end
```


#### Omit `return` for a method's last expression

```ruby
# bad
def drink(beverage)
  return "Ahh, this #{beverage} is refreshing!"
end

# good
def drink(beverage)
  "Ahh, this #{beverage} is refreshing!"
end
```


#### Use `return` to prematurely exit a method

```ruby
# bad
def drink(beverage)
  if beverage == 'wine'
    'Salute!'
  else
    'Cheers!'
  end
end

# good
def drink(beverage)
  return 'Salute!' if beverage == 'wine'
  'Cheers!'
end
```
