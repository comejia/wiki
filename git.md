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


# Github ssh credential

1) Open terminal and put:
	
	$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

I recommended you type Enter to use default value

3) Add ssh key to ssh-agent

	$ ssh-add ~/.ssh/id_rsa

4) Copy public key, e.g ~/.ssh/id_rsa.pub,

5) Paste the public key in github ssh section:

	Setting -> SSH and GPG keys -> New SSH key

* NOTE: To use ssh conexion you need clone repository with ssh url


