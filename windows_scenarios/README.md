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

## 1\. Scenario 1 | more add/commit/push practice

1. Go inside `Scenario1` directory and run `.\Scenario1.ps1` (note that you can tab-complete files and directories)

2. You'll see that a few files were created. Run `git status` to see them

3. Add, Commit, and Push all the changes

Before continuing, make sure that `git status` no longer shows files in red/green

1. Delete the "DeleteMe#.txt" files

2. Finish the math equation in "EditMe.txt"

3. Only push the changes for DeleteMe1.txt and EditMe.txt

Your end goal is having DeleteMe1.txt and EditMe.txt pushed, with the other files still in red with git status. Sometimes while coding, you have changes you dont want to commit yet.

-----

## 2\. Scenario 2 | gitignores

1. Naviagate to the directory `Scenario2`, and run its corresonding script like you did in Scenario 1

Sometimes when you code, you get files you dont want to commit ever, but it's a huge hassle. For instance, building in some C# projects yields hundreds of build files that live around in directories all over your project. A `.gitignore` file will make git ignore any file from being added/committed

2. Modify the `.gitignore` file to ignore all the IgnoreMe#.txt files. Your end goal is just seeing the DontIgnoreMe.txt files when you run `git status`. Feel free to use Bing or CoPilot to help you out. Bonus points if you write it in 1 line via regex.

3. If you only see the DontIgnoreMe.txt files, you can add/commit/push

