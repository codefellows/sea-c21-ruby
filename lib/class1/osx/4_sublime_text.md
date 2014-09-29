### Install Sublime Text

Now you can install [Sublime Text](http://www.sublimetext.com/), a sophisticated text editor for code, markup and prose.

To get started, download [Sublime Text 2](http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg) and drag the app icon into your `/Applications` folder.

**TIP:** Remember to eject the disk image after installing the app.

Next, launch the app and navigate to the `Sublime Text 2 > Preferences > Settings - User` menu item.

Ensure the file contains the following preferences:

```
{
  "ensure_newline_at_eof_on_save": true,
  "rulers": [80],
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true
}
```

**WARNING:** Punctuation errors with either curly-brackets, double-quotes, colons, square-brackets, or commas will be highlighted in red. If one of these symbols is missing, Sublime Text will highlight the next closest symbol. Analyze the above example preferences carefully. :eyes:

When you're done, save and close the file.

### subl

You'll find it insanely useful to open files and directories into Sublime Text from the Terminal.

To get started, run the following command:

```
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

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


### Change the PATH

Like most shells, Fish relies on the `PATH` environment variable to specify a set of directories where other commands can be found.

To see the contents of the PATH environment variable, run the following command:

```
echo $PATH
```

And you'll see:

```
/usr/bin /bin /usr/sbin /sbin /usr/local/bin
```

In upcoming sections, you'll use Homebrew to install additional commands. You'll want Fish to prefer these Homebrew-installed commands over the pre-installed commands that come with Mac OS X.

To change the `PATH` environment variable, opens the system file called `/etc/paths` in Sublime Text:

```
subl /etc/paths
```

Then, move `/usr/local/bin` to the **top of the file** like this:

```
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
```

Save the file and verify the change by running the following command:

```
echo $PATH
```

you'll see:

```
/usr/local/bin /usr/bin /bin /usr/sbin /sbin
```

Now, the `/usr/local/bin` directory is listed first. This means Fish (and any shell that leverages `/etc/paths`) will prefer Homebrew-installed commands over the pre-installed ones.


### [⇐ Previous](3_fish.md) | [Next ⇒](5_ruby.md)
