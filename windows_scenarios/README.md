# Scenarios!

Each powershell file here will create a new scenario

Run `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` to be able to run unsigned powershell files used in this lab

-----

## Getting Familiar

### Add, Commit, Push 

Let's push your first change!

1. Run `git status`. Take note of the output

2. Create a file, could be named anything. 

3. Run `git status`. See how git has taken note of the changes!

4. Run `git add <path to the file from the red line in git status>` (or you can run `git add --all`)

5. Run `git status`. See how the red text became green! Anything that is green is staged for committing

6. Run `git commit -m "I created a new file"` (could be any commit message)

7. Run `git status`. See how the green text was replaced by your stored commit message?

8. Run `git push`. If the commandline tells you that you need to copy and paste a line, do it. You should see a success message afterwards. Now your changes are tracked remotely in git!!

In summary, `git add ...`, `git commit ...`, `git push` with some `git status` sprinkled everywhere

-----

## 1\. Scenario 1

Run 

-----

## 3\. Getting Familiar

Awesome! You're in a git repo. Look around! Run `ls` to see your current directory

```bash
ls
```

The `git status` command is your best friend. It shows you the current state of your working directory and staging area, indicating which files have been modified, are staged for a commit, or are untracked.

```bash
git status
```

Notice that you're on the `main` branch

```
On branch main
Your branch is up to date with 'origin/main'.
```

## 4\. The Plan

I want you to make your own branch. Visually it's like this:

![branches](./images/branching.png)

... so as an analogy your workflow will look like this:
1. Go to Walmart (github) and you'll see Lay's chips (this repo on main branch)
2. Buy the chips and slap on a new brand name (your branch)
3. Add some salt into the bag of chips (making edits, git add/commit/push)
4. Put the bag of chips back in Walmart for others to buy (making your PR and merging back to main)

## 5\. Checkout

So start with making the branch. I also want you to practice a common GitOps behavior you'll see at work and in Open Source.

Name your branch "\<your name\>/\<what youre doing\>"

```bash
# For instance, I will make mines `git checkout -b "phuthai/GitPractice"
git checkout -b "<branchname>"
```

Now run `git status`. Make sure you see that you're on your new branch!

```bash
git status
```

## + Scenarios

Now move on to the scenarios. Depending on your operating system, go inside the `windows_scenarios` (Windows)
or `unix_scenarios` (macOS, Linux)

(remember the commands `ls` and `cd` if you're navigating via the command line)

