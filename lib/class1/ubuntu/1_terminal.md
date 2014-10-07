Setup for Ubuntu
----------------

This guide will help you setup a Ruby development environment on [Ubuntu 14.04 Trusty Tahr](http://releases.ubuntu.com/14.04/).

Older versions of Ubuntu are mostly compatible so follow along as far as you can and then Google search any problems you come across. There are plenty of people who've published their solutions to the web.


### The Terminal

Included in Ubuntu is the **Terminal** -- an app that runs a Unix shell.

A **Unix shell** is a command line user interface between you and your computer's operating system. You're probably most familiar with the operating system's graphical user interface. While that's technically a shell too, most programmers think of the textual, command line interface when they hear to word _shell_.


### Explore the Terminal

Let's get our hands dirty and have some fun.

In Ubuntu Unity, launch the Terminal app by clicking the Ubuntu logo and typing `terminal`.

![](https://i.imgur.com/qH7fROg.png)

Once launched, you'll see something like:

```
ryansobol@photon:~$
```

Here's a quick break down of what you're seeing:

| Component             | Description                            |
| --------------------- | -------------------------------------- |
| `ryansobol`           | Name of your user account              |
| `photon`              | Name of your computer                  |
| `~` (home directory)  | Name of your working directory         |
| `$`                   | Prompt symbol                          |

Anything typed appears after the `$` prompt symbol.

Go ahead and type `uname`. After pressing the Enter key, you'll see something like:

```
ryansobol@photon:~$ uname
Linux
ryansobol@photon:~$
```

Here's what happened:

1. The shell waited for the user to type a command.
1. The user typed the word `uname` which appeared after the prompt.
1. The user pressed the Enter key and the shell accepted your user input.
1. The shell searched for a program called `uname`.
1. Once found, the shell launched the `uname` program and handed it control over the Terminal.
1. While running, the `uname` program told the Terminal to display the word `Linux`.
1. Once finished, the `uname` program exited and handed control of the Terminal back to the shell.
1. The shell told the Terminal to display another prompt.
1. Once displayed, the shell began waiting for the next user command.

In other words, a Unix shell works as a read-evaluate-print loop or **REPL**.


### Change the Terminal Profile

The default profile for the Terminal looks pretty, but uses small text and has low color contrast. Let's fix that.

First, run these commands to download and install a hax0r looking Terminal Profile called `Tomorrow`.

```
sudo apt-get update
sudo apt-get install -y curl
curl -fsSL http://git.io/Ak1LNQ | sh
```

Then, navigate to the `Edit > Profiles` menu item.

![](https://i.imgur.com/urVA5BE.png)

In the `Profiles` window, select `Tomorrow` as the profile used when launching a new terminal.

![](https://i.imgur.com/zjgBJlD.png)

Now, every new Terminal window that you open will look like this:

![](https://i.imgur.com/E8c6bNH.png)


### [Next ⇒](2_apt.md)
