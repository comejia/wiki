# Compare two branches

Using two dots:

	$ git diff branch1..branch2

It will show you all differences that "branch2" has and these are not in "branch1"

Using three dots:

	$ git diff branch1...branch2

In this case, it compares the top of "branch2" with some common ancestor of both branches


# Syncing a forked project

1) Add a original remote repository

	$ git remote add upstream https://original_repository.git

2) Verify the new repository

	$ git remote -v

3) Feth data from upstream repository

	$ git fech upstream

4) Check out to master branch

	$ git checkout master

5) Merge the changes

	$ git merge upstream/master

