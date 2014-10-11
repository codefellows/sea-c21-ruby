### GitHub

You're on the home stretch now! :racehorse:

Run the following command to download and install some extra Git config that'll make your life easier when using GitHub from the command line:


```
curl -fsSL http://git.io/Ggdljw | sh
```


### Fork and clone this repository

Make a `Projects` directory if you don't have one:

```
mkdir ~/Projects
```

Then change into this directory:

```
cd ~/Projects
```

Back in your browser, fork **this repository** by clicking the `Fork` button on the top right of the page:

![fork me](https://i.imgur.com/JjaRBfW.png)

Then copy the **HTTPS clone URL** of your forked repository by clicking the little `Copy icon` button on the right sidebar:

![clone you](https://i.imgur.com/NYj4fAo.png)

Back in the Terminal, run the following command to `clone` the repository to your computer. Remember to replace `CLONE_URL` with the URL copied into the clipboard:

```
git clone CLONE_URL
```

**TIP:** If clicking the button doesn't copy the URL, try using a different browser like [Chrome](https://www.google.com/chrome/browser/).

Finally, change into the project's directory:

```
cd sea-c21-ruby
```

And you'll see a shell prompt like this:

```
~/P/sea-c21-ruby master ✔
```

Here's a quick break down of what you're seeing:

| Component          | Description                                         |
| ------------------ | --------------------------------------------------- |
| `~/P/sea-c21-ruby` | Abbreviated name of your working directory          |
| `master`           | Name of your repository's current branch            |
| `✔`                | Prompt symbol indicating your staging area is clean |

Anything typed appears after the green `✔` prompt symbol. :+1:

**TIP:** The full name of your working directory is `~/Projects/sea-c21-ruby`. To save prompt space, Fish abbreviates it. This is especially handy for **deeply nested** directories.


### Test your laptop

Now that the working directory is set to the project's directory, you can test how well you've setup your laptop. :8ball:

To get started, run the following command:

```
bin/test_laptop
```

Now, you may have noticed a red `✖` has replaced your prompt symbol. It indicates your staging area is dirty. :worried:

To fix that, add `lib/class1/laptop.txt` to your repository's staging area:

```
git add lib/class1/laptop.txt
```

And commit the changes to your repository:

```
git commit -m 'Submit class1 assignment'
```

The green `✔` prompt symbol is back, indicating your staging area is clean. Phew! :relieved:


### Submit your homework

Next, push your changes back to GitHub:

```
git push origin master
```

And, submit the link of **your forked GitHub repository** to the [Class 1 Assignment](https://canvas.instructure.com/courses/880907/assignments/3003935)  on Canvas.

![my forked repo](https://i.imgur.com/g9UtQoL.png)


### Final setup

There's only two more steps to be 100% setup for the remainder of this course.

First, you'll need to download and install [Bundler](http://bundler.io/), a tool that'll manage 3rd-party Ruby code for your homework assignments:

```
sudo gem install bundler
```

Second, install the 3rd-party Ruby code with Bundler:

```
bundle install --path vendor/bundle
```

And third, you'll want to add an `upstream` remote to you locally cloned project:

```
git remote add upstream https://github.com/codefellows/sea-c21-ruby.git
```

That way you, whenever an instructor wants to update this project, you can sync up with their changes by running the following command:

```
git pull upstream master
```


### Congratulations!

Time for a frosty beverage. :beers:


### [⇐ Previous](6_git.md)
