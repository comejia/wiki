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

# Uploading large files

1) Download git-lfs repository source

	$ curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
	
2) Install git-lfs

	$ sudo apt-get install git-lfs
	
3) Run this command once time

	$ git lfs install

4) Select the file types you'd like Git LFS to manage (or directly edit your .gitattributes)

	$ git lfs track "*.psd"

5) Upload file to Github

	$ git add file.psd
	
	$ git commit -m "Add design file"
	
	$ git push origin master
	

* NOTE: You repository can't be empty (e.g. new repository)

# Problems with "unrelated-histories"

Forcing:

	$ git pull origin branch_name --allow-unrelated-histories
	$ git merge origin branch_name --allow-unrelated-histories
	$ git push origin branch_name --allow-unrelated-histories
	
If you want get remote data:

	$ git fetch --all
	$ git reset --soft origin/branch_name
	$ git add --all
	$ git commit -am "new commit over remote commit"
	$ git push origin branch_name


## Tags
```
$ git tag -a <tag> -m <"description">
$ git push origin <tag>
```

## Remote URL

Setting first time origin
```
$ git remote add origin git@github.com:<user>/repository.git
```

Changing origin
```
$ git remote set-url origin git@github.com:<user>/new-repository.git
```

## Bundle files

Create a bundle of a repository
```
$ git bundle create <file.bundle> <git-rev-list-args>

Example
$ git bundle create my.bundle develop
```

Clone a bundle
```
$ git clone <file.bundle>
```
