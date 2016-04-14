Keep a forked repository in sync
================================

Add the remote, call it "upstream":

`git remote add upstream https://github.com/whoever/whatever.git`

Fetch all the branches of that remote into remote-tracking branches, such as upstream/master:

`git fetch upstream`

Make sure that you're on your master branch:

`git checkout master`

Rewrite your master branch so that any commits of yours that aren't already in upstream/master are replayed on top of that other branch:

`git rebase upstream/master`

squash (before pushing)

`git rebase -i HEAD~3`

Handle merge conflicts
======================

conflict markers:
Delete the part you dont want to use and keep the good stuff.
Or try a 3-way merge with Fugitive plugin.

```
<<<<<<< HEAD

=======

>>>>>>> new branch
```

Only keep part of certain commit (cherry-pick)
==============================================

Select code hunks to keep or dicard. The parameter -n means --no-commit, so that no merge commit is generated.

`git cherry-pick -n <commit-id>`

unstage changes from cherry-pick

`git reset`

create/edit patch

`git add -p`

after changes have been authored commit this branch

`git commit`

Discard last commit
===================

If commit has not yet been pushed:

`git reset --soft HEAD`

If it has already been commited, create patch that does the opposite of that last commit:

`git revert HEAD`

what commit added certain file

`git config --global alias.whatadded 'log --diff-filter=A'`

delete ignored files from git if rules applied later

`git rm --cached filename`

