### Install Sublime Text

Using APT, you can install [Sublime Text](http://www.sublimetext.com/), a sophisticated text editor for code, markup and prose.

To get started, run the following commands:

```
sudo apt-get install -y sublime-text-installer
```

Once installed, launch the Sublime Text editor by clicking the Ubuntu logo and typing `sublime`.

![](https://i.imgur.com/urq6WwX.png)

Next, navigate to the `Preferences > Settings - User` menu item.

Ensure the file contains the following preferences:

```
{
  "ensure_newline_at_eof_on_save": true,
  "rulers": [80],
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "update_check": false
}
```

**WARNING:** Punctuation errors with either curly-brackets, double-quotes, colons, square-brackets, or commas will be highlighted in red. If one of these symbols is missing, Sublime Text will highlight the next closest symbol. Analyze the above example preferences carefully. :eyes:

When you're done, save and close the file.

### subl

You'll find it insanely useful to open files and directories into Sublime Text from the Terminal.

To verify Sublime Text is wired up correctly, run the following command:

```
subl ~/.config/fish/config.fish
```

And Fish's startup file will open in Sublime Text.


### Edit config.fish

Many command line tools, like Git, use the `EDITOR` environment variable to open your preferred text editor.

While Fish's startup file is handy, add the following settings:

```
# Sublime Text
set -gx EDITOR 'subl -w'
```

Save the file and relaunch the Terminal. Verify these settings with the following command:

```
echo $EDITOR
```

And you'll see:

```
subl -w
```


### Inspect the PATH

Like most shells, Fish relies on the `PATH` environment variable to specify a set of directories where other commands can be found.

To see the contents of the PATH environment variable, run the following command:

```
echo $PATH
```

And you'll see something like:

```
/usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games
```


### [⇐ Previous](3_fish.md) | [Next ⇒](5_ruby.md)
