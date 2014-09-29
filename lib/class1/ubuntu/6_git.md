### Install Git

Using APT, you can also install [Git](http://git-scm.com/), the version control system of choice among choosy developers. :neckbeard:

To get started, run the following command:

```
sudo apt-get install -y git-core
```

**TIP:** If you've been following along this guide, git may already be installed. :+1:

Once it finishes, run the following command:

```
git --version
```

And you'll see something like this:

```
git version 2.1.1
```

### Git Config

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

**WARNING:** Before running the following commands, replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` with the name and email from [your GitHub account](https://github.com/settings/profile).

```
git config --global user.name 'YOUR FULL NAME'
git config --global user.email 'YOUR EMAIL ADDRESS'
```

Next, run this command to download and install some awesome colors and handy aliases for Git:

```
curl -fsSL http://git.io/7UHtNA | sh
```

We'll go over these later. For now, relish in your victory of making it this far in the setup guide. :tada:


### [⇐ Previous](5_ruby.md) | [Next ⇒](7_github.md)
