Setup for Mac OS X
------------------

This guide will help you setup a Ruby development environment on [Mac OS X 10.9 Mavericks](https://www.apple.com/osx/).

Older versions of OS X are mostly compatible so follow along as far as you can and then Google search any problems you come across. There are plenty of people who've published their solutions to the web.


### The Terminal

Included in Mac OS X is the **Terminal** -- an app that runs a Unix shell.

A **Unix shell** is a command line user interface between you and your computer's operating system. You're probably most familiar with the operating system's graphical user interface. While that's technically a shell too, most programmers think of the textual, command line interface when they hear to word _shell_.


### Explore the Terminal

Let's get our hands dirty and have some fun.

First, launch the Terminal app which lives in the `/Applications/Utilties/` directory. Once launched, you'll see something like:

```
Last login: Fri Jul 18 22:40:40 on ttys000
photon:~ ryansobol$
```

Here's a quick break down of what you're seeing:

| Component             | Description                            |
| --------------------- | -------------------------------------- |
| `Fri Jul 18 22:40:40` | Date of your last login                |
| `ttys000`             | Name of your last terminal session     |
| `photon`              | Name of your computer                  |
| `~` (home directory)  | Name of your working directory         |
| `ryansobol`           | Name of your user account              |
| `$`                   | Prompt symbol                          |

Anything typed appears after the `$` prompt symbol.

Go ahead and type `uname`. After pressing the Enter key, you'll see something like:

```
Last login: Fri Jul 18 22:40:40 on ttys000
photon:~ ryansobol$ uname
Darwin
photon:~ ryansobol$
```

Here's what happened:

1. The shell waited for the user to type a command.
1. The user typed the word `uname` which appeared after the prompt.
1. The user pressed the Enter key and the shell accepted your user input.
1. The shell searched for a program called `uname`.
1. Once found, the shell launched the `uname` program and handed it control over the Terminal.
1. While running, the `uname` program told the Terminal to display the word `Darwin`.
1. Once finished, the `uname` program exited and handed control of the Terminal back to the shell.
1. The shell told the Terminal to display another prompt.
1. Once displayed, the shell began waiting for the next user command.

In other words, a Unix shell works as a read-evaluate-print loop or **REPL**.


### Change the Terminal Profile

The default profile for the Terminal uses small, black text on a white background. Boring! Let's change it to something moar hax0r.

1. Download the [Tomorrow Night Eighties](https://raw.githubusercontent.com/ryansobol/sea-c17-ruby/master/class1/osx/Tomorrow%20Night%20Eighties.terminal) terminal profile by holding the Option key and left-clicking the link.
1. Navigate to the `Downloads` folder.
1. Install the profile by double-clicking the file.
1. You may see an alert explaining the file "cannot be opened because it is from an unidentified developer".
  1. If so, launch the **System Preferences** app, navigate to `Security & Privacy > General`, and then click on the `Open Anyway` button. ![](https://i.imgur.com/i7sdnEz.png)
1. Back in the Terminal app, navigate to the `Terminal > Preferences` menu item.
1. In the preferences window, click the `Settings` Pane.
1. On the left side, scroll to the bottom, select the `Tommorrow Night Eighties` profile, and click the `Default` button. ![](https://i.imgur.com/TQmcT8A.png)

Now, every new Terminal window that you open will look like this:

![](https://i.imgur.com/eOy5Hzv.png)


### [Next ⇒](2_homebrew.md)
