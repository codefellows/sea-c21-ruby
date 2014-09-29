### Install Fish

Using APT, you can now install [Fish](http://fishshell.com/), a smart and user-friendly command line shell.

To get started, run the following commands:

```
sudo apt-get install -y fish curl git-core
```

Then, make Fish your default shell:

```
chsh -s /usr/bin/fish
```

Now, restart Ubuntu and relaunch your Terminal. Welcome to Fish! :tropical_fish:


### Improve the prompt

The prompt is the visual cornerstone of any shell, so let's change it to be both functional and glamorous. :nail_care:

First, make a directory for your `fish_prompt` by running the following command:

```
mkdir ~/.config/fish/functions
```

Next, run the following command to download and install an awesome `fish_prompt`:

```
curl -fsSL http://git.io/ykpkfQ > ~/.config/fish/functions/fish_prompt.fish
```

Verify the change by relaunching the Terminal. You'll see something like this:

```
~ $
```

Here's a quick break down of what you're seeing:

| Component             | Description                            |
| --------------------- | -------------------------------------- |
| `~` (home directory)  | Name of your working directory         |
| `$`                   | Prompt symbol                          |

When changing directories with the `cd` command, the prompt's working directory will change too:

```
~ $ cd .config
~/.config $
```

Use the `cd` command with no arguments to change back to the `~` home directory:

```
~/.config $ cd
~ $
```

### Update the auto-completions

Fish's auto-completions enhance the user experience of most command line tools.

To update fish's completions, run the following command:

```
fish_update_completions
```

To try out auto-completions, start typing:

```
sudo apt-get c
```

And press the Tab key. You'll see:

```
check  (Update cache and check dependencies)
clean      (Clean local caches and packages)
```

Finish the command by typing:

```
sudo apt-get check
```

And you'll see something like:

```
sudo apt-get check
[sudo] password for ryansobol:
Reading package lists... Done
Building dependency tree
Reading state information... Done
```


### [⇐ Previous](2_apt.md) | [Next ⇒](4_sublime_text.md)
