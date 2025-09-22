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

![Scenario1 goalstate](../images/scenario1.png)

Note how the `DontDeleteMe.txt` doesnt show up in `git status`, it's already committed/pushed in the repo!

-----

## 2\. Scenario 2 | Restoring

1. Navigate to the directory `Scenario2`, and run its corresonding script like you did in Scenario 1

2. Run `git add --all`

3. OH NO! You accidentally staged a `TestPassword.txt` file that you dont want committed to the repo. To move it back from staged (green) to unstaged (red), run `git restore --staged "thefilename"` (replace the filename)

4. OH NO! You also staged my `Scenario2.ps1`, this time with changes! I want you to revert the file back to its original state found in git. To do this, unstage the staged file. Then run `git restore "thefilename"` (replace the filename

5. Finally unstage that RestoreMe2.txt file. Once your git status looks like this:

![scenario2](../images/scenario2.jpg)

Then feel free to commit/push

-----

## 3\. Scenario 3 | gitignores

Sometimes when you code, you get files you dont want to commit ever, but it's a huge hassle. For instance, building in some C# projects yields hundreds of build files that live around in directories all over your project. A `.gitignore` file will make git ignore any file from being added/committed

1. Navigate to the directory `Scenario3`, and run its corresonding script 

2. Modify the `.gitignore` file to ignore all the IgnoreMe#.txt files. Your end goal is just seeing the DontIgnoreMe.txt files when you run `git status`. Feel free to use Bing or CoPilot to help you out. Bonus points if you write it in 1 line via regex.

3. This is the goal state:

![Scenario3 goalstate](../images/scenario3.png)

Notice how the `IgnoreMe#.txt` files still exist in the file explorer, AND it doesn't show up at all in `git status`. If you've achieved this, feel free to commit/push

-----

## 4\. Scenario 4 | Git Stash Practice

`git stash` is one of the most underrated Git tools, that even many professionals don't utilize. It temporarily saves your work without committing it. This is incredibly useful when you need to quickly switch branches, pull updates, or work on something else while your current work is incomplete. It prevents you from making the more dangerous and confusing `git reset...` or `git revert...` commands in the future.

In summary, imagine that whenever you run `git stash`, you store green changes in a backpack, ready to be reapplied anytime.

### Part 1: Basic Stash Operations

1. Navigate to the directory `Scenario4`, and run its corresponding script

2. Run `git status` to see all the new files created

3. **Basic Stash**: Add and modify some files, then practice basic stashing:
   - Run `git add feature.txt bugfix.txt` to stage some files
   - Modify `config.txt` by changing the port number to 9090
   - Run `git status` - you should see staged and unstaged changes
   - Run `git stash` to stash both staged and unstaged changes
   - Run `git status` - your working directory should be clean!

4. **View Stash List**: Run `git stash list` to see your stashed changes

5. **Apply Stash**: Run `git stash apply` to restore your changes (but keep them in the stash)

![Scenario4 stash goalstate](../images/scenario4stash.png)

### Part 2: Advanced Stash Operations

6. **Stash with Message**: Make more changes, then run `git stash push -m "Work in progress on feature and config"`

7. **Stash Untracked Files**: 
   - Modify `untracked_file.txt`
   - Run `git stash -u` (or `git stash --include-untracked`) to include untracked files
   - Verify with `git status` that even untracked changes are stashed

8. **Multiple Stashes**: Create several stashes with different messages:
   - Make changes to `temp_work.txt`, then `git stash push -m "Temporary debugging code"`
   - Make changes to `feature.txt`, then `git stash push -m "Half-finished feature implementation"`
   - Run `git stash list` to see all your stashes

### Part 3: Stash Management

9. **Selective Stash Application**:
   - Run `git stash list` to see stash indices
   - Apply a specific stash: `git stash apply stash@{1}` (replace 1 with desired index)
   - Check differences: `git stash show stash@{0}` (shows summary) or `git stash show -p stash@{0}` (shows full diff)

10. **Stash Pop vs Apply**:
    - Use `git stash pop` to apply the most recent stash AND remove it from stash list
    - Use `git stash apply` to apply the stash but keep it in the stash list
    - Practice both and observe the difference with `git stash list`

11. **Partial Stashing**:
    - Make changes to multiple files
    - Run `git stash -p` (or `git stash --patch`) for interactive stashing
    - Choose which hunks to stash by typing `y` (yes), `n` (no), `s` (split), etc.

### Part 4: Advanced Stash Features

12. **Stash Branch Creation**:
    - Create a new branch from a stash: `git stash branch feature-branch stash@{0}`
    - This creates a new branch, checks it out, applies the stash, and drops it

13. **Stash Dropping**:
    - Drop a specific stash: `git stash drop stash@{1}`
    - Clear all stashes: `git stash clear` (be careful with this!)

14. **Stash Show Options**:
    - View stash summary: `git stash show`
    - View full stash diff: `git stash show -p`
    - View specific stash: `git stash show stash@{2}`

### Practice Scenarios

Try these real-world scenarios:

**Scenario A**: You're working on a feature but need to quickly fix a bug
1. Make changes to `feature.txt`
2. Stash your work: `git stash push -m "Feature work in progress"`
3. Make changes to `bugfix.txt` and commit the bug fix
4. Apply your stashed feature work: `git stash pop`

**Scenario B**: You want to experiment with different approaches
1. Make changes to `config.txt`
2. Stash them: `git stash push -m "Config approach 1"`
3. Try a different approach in the same file
4. Stash that too: `git stash push -m "Config approach 2"`
5. Compare both approaches using `git stash show -p` on different stashes

**Scenario C**: Clean up your workspace
1. Create multiple stashes with different changes
2. Use `git stash list` to review them
3. Apply the ones you want to keep working on
4. Drop the experimental ones you no longer need

### Key Git Stash Commands Reference

- `git stash` or `git stash push` - Stash current changes
- `git stash push -m "message"` - Stash with a descriptive message
- `git stash -u` - Stash including untracked files
- `git stash -p` - Interactive/partial stashing
- `git stash list` - Show all stashes
- `git stash show` - Show summary of most recent stash
- `git stash show -p` - Show full diff of most recent stash
- `git stash apply` - Apply most recent stash (keep in stash list)
- `git stash apply stash@{n}` - Apply specific stash
- `git stash pop` - Apply and remove most recent stash
- `git stash drop stash@{n}` - Delete specific stash
- `git stash clear` - Delete all stashes
- `git stash branch <branch-name>` - Create branch from stash

**Goal**: Master git stash to efficiently manage your work-in-progress changes!

