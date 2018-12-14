---
title: "Git basics"
permalink: /teaching/EL2424/git-basics/
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
sidebar:
  nav: "el2425"
---

### Connect your local repository to GitHub
On the car, do 
1. Go into the folder of your catkin package (probably ~/catkin_ws/src/name_of_package)
2. Initialize a git repository:     ```git init```
3. Connect the repositoty to github:    ```git remote add origin https://github.com/laperss/EL242518.git```
4. Confirm that it worked:   ```git remote -v```
    Should result in the following output:

```bash
origin https://github.com/laperss/EL242518.git (fetch)
origin https://github.com/laperss/EL242518.git (push)
```

5.  Pull the contents of the GitHub repository:    ```git pull origin master```
6. Fill in the username and password of your GitHub account
7. If step 6) worked, add the files that you want to have in your GitHub repository, for example:   ```git add CMakeLists.txt package.xml
git add scripts/name_of_some_script.py
git add launch/name_of_some_launch_file.launch```
8. Confirm that the addition was successful:     ```git status```
The result should be a list of all the files you want to upload in green.
9. Commit the files, use a proper commit message, for example "Initial commit" since this is your first commit:    ```git commit -m 'Initial commit' ```
10. Push the changes to GitHub    ```git push origin master```
Now, if you go to the repositoty online (https://github.com/laperss/EL242518) you should be able to see the files you just uploaded!

### Commit messages
Everytime you commit something to git, you should write a commit message. The commit message should inform the other students in your group what you have added/changed/removed in this commit and should be easy to understand. 

### Minimal set of commands

These are some _minimal_ commands to know when using Git. 

**STEP 1: DOWNLOAD**
You should make it a habit to always fetch (and possibly merge) the latest changes from GitHub before starting to work with your code.

*Alternative 1:*  Start by fetching the latest changes: ```git fetch ```
Now, you have downloaded the latest information about the repository to your computer. The changes can not yet be seen, to merge the latest changes into your own repository you must do (assuming you want to merge with the master branch) ```git merge  origin/master```

*Alternative 2:* There is a command that does both the above commands automatically for you: ```git pull origin master```

**STEP 2: UPLOAD**
Always when you have implemented a feature/fix, you should commit all the files that are part of the feature you just implemented: 
```bash
git status
git add some_file_1.py some_file_2.py
git add some_file_3.py
git commit -m "Informative but short message about your feature"
git push origin master
```
