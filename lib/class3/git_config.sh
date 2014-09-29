#### List current git config settings

git config -l


#### push.default

# Push the current branch to a remote branch of the same name without specifying
# either the remote or branch name.
#   Example: git push
# You must supply the -u option and both remote and branch names the first time.
#   Example: git push -u origin mybranch
git config --global push.default simple


#### credential.helper for https remotes

# NOTE: These settings only work with repositories that use the HTTPS protocol.

# Mac OS X: Use the Keychain app to store your GitHub username and password.
# You'll be prompted for your username and password the first time.
git config --global credential.helper osxkeychain

# Linux: Save your password in memory for 15 minutes.
git config --global credential.helper cache

# Linux: Save your password in memory for 1 hour (i.e. 3600 seconds).
git config --global credential.helper 'cache --timeout=3600'


#### alias.df

# View the changes in your working tree relative to the last commit
git config --global alias.df 'diff HEAD'


#### alias.dfs

# View the changes you staged for the next commit relative the last commit
git config --global alias.dfs 'diff --staged'
