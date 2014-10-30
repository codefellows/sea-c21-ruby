## Class Guidelines


#### Use PascalCase class names

```ruby
# bad
class Comicbook
end

# good
class ComicBook
end
```


#### Keep acronyms uppercase (e.g. HTTP, YAML)

```ruby
# bad
class AtmCard
end

# good
class ATMCard
end
```


#### Define one class per source file

```ruby
# bad
# file: comic_book.rb
class ComicBook
end

class Artist
end

# good
# file: comic_book.rb
class ComicBook
end

# file: artist.rb
class Artist
end
```


### Use snake_case for file names

```ruby
# bad
comicBook.rb


# good
comic_book.rb
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

person = Person.new('Sierra')
person.name  #=> "Sierra"

# good
class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

person = Person.new('Sierra')
person.name  #=> "Sierra"
```

**TIP:** Omit parentheses for methods that have "keyword" status


#### Use `attr_writer` to define trivial setter methods

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end
end

person = Person.new('Sierra')
person.name = 'Nicole'  #=> "Nicole"

# good
class Person
  def initialize(name)
    @name = name
  end

  attr_writer :name
end

person = Person.new('Sierra')
person.name = 'Nicole'  #=> "Nicole"
```

**TIP:** Omit parentheses for methods that have "keyword" status


#### Use `attr_accessor` to define trivial getter and setter methods

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

person = Person.new('Sierra')
person.name = 'Nicole'  #=> "Nicole"
person.name             #=> "Nicole"

# good
class Person
  def initialize(name)
    @name = name
  end

  attr_accessor :name
end

person = Person.new('Sierra')
person.name = 'Nicole'  #=> "Nicole"
person.name             #=> "Nicole"
```

**TIP:** Omit parentheses for methods that have "keyword" status


#### Prefer getter methods over using instance variables directly

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def greet
    "Hello #{@name}"
  end
end

person = Person.new('Sierra')
person.greet  #=> "Hello Sierra"

# good
class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def greet
    "Hello #{name}"
  end
end

person = Person.new('Sierra')
person.greet  #=> "Hello Sierra"
```

**TIP:** `NameError: undefined local variable or method` means just that.


#### Avoid using `self` when calling internal methods

```ruby
# bad
class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def greet
    "Hello #{self.name}"
  end
end

person = Person.new('Sierra')
person.greet  #=> "Hello Sierra"

# good
class Person
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def greet
    "Hello #{name}"
  end
end

person = Person.new('Sierra')
person.greet  #=> "Hello Sierra"
```

**TIP:** You must use `self` when calling an internal setter method
