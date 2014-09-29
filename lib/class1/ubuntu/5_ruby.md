### Install Ruby

Using APT, you can now install the latest, stable version of [Ruby](https://www.ruby-lang.org/).

To get started, run the following commands:

```
wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
tar -xzvf ruby-install-0.4.3.tar.gz
cd ruby-install-0.4.3/
sudo make install
sudo ruby-install -i /usr/local/ ruby 2.1.3
cd
rm -rf ~/src/
rm -rf ~/ruby-install-0.4.3/
```

Once it finishes, run the following command:

```
ruby -v
```

And you'll see something like this:

```
ruby 2.1.3p242 (2014-09-19 revision 47630) [x86_64-linux]
```

### Interactive Ruby Shell

The Interactive Ruby Shell, or **IRB**, provides a REPL (read-evaluate-print loop) for Ruby programs.

To get started, run this command to download and install a small config file that makes IRB more beginner friendly:

```
curl -fsSL http://git.io/G6oJ4g > ~/.irbrc
```

Then, launch IRB by running the following command:

```
irb
```

You'll immediately see the IRB prompt:

```
>>
```

Where you can type and run any Ruby program:

```
>> 42 + 9000
=> 9042
```

Even a more sophisticated Ruby program:

```
>> def add(a, b)
>>   a + b
>> end
=> :add
>> add(42, 9000)
=> 9042
```

IRB is a great tool for learning and experimenting with Ruby.

**TIP:** To quit, type `exit` and press the Enter key.


### Ruby Interpreter

Given a Ruby program, the **Ruby Interpreter** reads it, evaluates it, and then quits.

Unlike IRB, the Ruby Interpreter won't necessarily print anything and it certainly won't loop waiting for you to give it another program to run. Despite these deficiencies, you'll use the Ruby Interpreter to run nearly all the Ruby programs you create.

Let's try it out. First, open a new Ruby program file in Sublime Text:

```
subl ~/Desktop/test.rb
```

**TIP:** Ruby program files end with a `.rb` extension.

Then type the following program into the file:

```
42 + 9000
```

Save the file and run the program using the Ruby Interpreter:

```
ruby ~/Desktop/test.rb
```

Weird, nothing happened. Remember, the Ruby Interpreter won't print anything unless told. Jerk! :triumph:

Change the program so it reads like this:

```
puts 42 + 9000
```

Save the file and re-run the program:

```
ruby ~/Desktop/test.rb
```

And you'll see:

```
9042
```

Bravo! :tada:

Play around with Ruby on your own. When you're done, remove the `test.rb` file by running the following command:

```
rm ~/Desktop/test.rb
```


### [⇐ Previous](4_sublime_text.md) | [Next ⇒](6_git.md)
