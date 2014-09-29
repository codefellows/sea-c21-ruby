### Update APT

Now that your Terminal is setup, it's time to update Ubuntu's **Advanced Packaging Tool** or [APT](https://help.ubuntu.com/lts/serverguide/apt-get.html) for short. If you've never heard of a package manager, think of it as an App Store of **free** command line programs.

To get started, run the following commands:

```
sudo apt-add-repository -y ppa:fish-shell/release-2
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-add-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
```

**TIP:** Any command prefixed with `sudo` will require an administrative password.


### [⇐ Previous](1_terminal.md) | [Next ⇒](3_fish.md)
