# Compare two branches

Using two dots:

	$ git diff branch1..branch2

It will show you all differences that "branch2" has and these are not in "branch1"

Using three dots:

	$ git diff branch1...branch2

In this case, it compares the top of "branch2" with some common ancestor of both branches
