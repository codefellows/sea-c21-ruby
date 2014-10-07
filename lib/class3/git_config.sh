#### List current git config settings

git config -l

#### alias.df

# View the changes in your working tree relative to the last commit
git config --global alias.df 'diff HEAD'


#### alias.dfs

# View the changes you staged for the next commit relative the last commit
git config --global alias.dfs 'diff --staged'
