## Class Guidelines


#### Use CamelCase class names

```ruby
# bad
class Someclass
  # body omitted
end

# bad
class Some_Class
  # body omitted
end

# good
class SomeClass
  # body omitted
end
```


#### Keep acronyms uppercase (e.g. HTTP, YAML)

```ruby
# bad
class SomeHttp
  # body omitted
end

# good
class SomeHTTP
  # body omitted
end
```


#### Define one class per source file

```ruby
# bad: some_class.rb
class SomeClass
  # body omitted
end

class AnotherClass
  # body omitted
end

# good: some_class.rb
class SomeClass
  # body omitted
end

# good: another_class.rb
class AnotherClass
  # body omitted
end
```


### Use snake_case for file names

```ruby
# bad
someClass.rb


# good
some_class.rb
```


#### Use `attr_reader` to define trivial getter methods

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

# good
class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name
end
```

**TIP:** Omit parentheses for methods that have "keyword" status


#### Prefer getter methods over using instance variables directly

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  def name
    "#{@name}-san"
  end

  def greet
    puts "Konnichiwa #{@name}"
  end
end

person = Person.new("Sierra")
person.greet  #=> "Konnichiwa Sierra"

# good
class Person
  def initialize(name)
    @name = name
  end

  def name
    "#{@name}-san"
  end

  def greet
    puts "Konnichiwa #{name}"
  end
end

person = Person.new("Sierra")
person.greet  #=> "Konnichiwa Sierra-san"
```


#### Avoid using `self` when calling internal methods

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  def name
    "#{@name}-san"
  end

  def greet
    puts "Konnichiwa #{self.name}"
  end
end

person = Person.new("Sierra")
person.greet  #=> "Konnichiwa Sierra-san"

# good
class Person
  def initialize(name)
    @name = name
  end

  def name
    "#{@name}-san"
  end

  def greet
    puts "Konnichiwa #{name}"
  end
end

person = Person.new("Sierra")
person.greet  #=> "Konnichiwa Sierra-san"
```


#### Indent the `public` and `private` keywords

```ruby
# bad
class SomeClass
  def public_method
    # ...
  end

private

  def private_method
    # ...
  end
end

# good
class SomeClass
  def public_method
    # ...
  end

  private

  def private_method
    # ...
  end
end
```


#### Use bang methods to indicate mutation

```ruby
# bad
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def update(name, age)
    @name = name
    @age = age
    true
  end
end

person = Person.new("Sierra", 26)
person.update("Sierra", 27)  #=> true

# good
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def update!(name, age)
    @name = name
    @age = age
    true
  end

  def update(name, age)
    Person.new(name, age)
  end
end

person = Person.new("Sierra", 26)
sierra = person.update("Sierra", 27)   #=> Person.new("Sierra", 27)
person.update!("Sierra", 27)  #=> true
```

**TIP:** Avoid bang methods altogether. Prefer immutable objects
