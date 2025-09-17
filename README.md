# Git Lab: Getting Started with Version Control

Welcome to the Git Lab\! This hands-on exercise will guide you through the fundamental concepts and commands of Git. By the end, you'll be able to clone a repository, make changes, and push them back.

-----

## 1\. Setup

### a. Install Git

First, you'll need to install Git on your computer.

  * **macOS:** Open your terminal and use Homebrew by typing `brew install git`.
  * **Windows:** Download and run the installer from the [Git for Windows website](https://git-scm.com/download/win).
  * **Linux (Ubuntu/Debian):** Open a terminal and run `sudo apt-get install git`.

### b. Configure Git

Next, set your username and email. Git attaches this information to all your commits, so it's essential for tracking who made what changes.

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

-----

## 2\. Clone the Repository

### a. Clone the Repo

A **repository** is a project that Git tracks. To get a local copy of our example project, use the `git clone` command. This downloads the entire project history.

```bash
git clone https://github.com/your-username/example-repo.git
```

**Note:** Please replace `your-username/example-repo` with the actual path to your repository.

### b. Navigate into the Directory

After cloning, a new folder with the same name as the repository will be created. Use the `cd` command to enter it.

```bash
cd example-repo
```

-----

## 3\. Basic Git Commands

### a. Check the Status

The `git status` command is your best friend. It shows you the current state of your working directory and staging area, indicating which files have been modified, are staged for a commit, or are untracked.

```bash
git status
```

### b. Make and Stage Changes

Open the `README.md` file in a text editor. Add a new line of text, like "Hello, Git\!" and save the file. Now, run `git status` again. You'll see that Git recognizes the change.

To prepare the change for a commit, you need to **stage** it using `git add`.

```bash
git add README.md
```

### c. Commit Changes

A **commit** is a snapshot of your repository at a specific point in time. It's a way of saving a group of staged changes. Use `git commit` to create one, adding a brief message with the `-m` flag to describe the changes you made.

```bash
git commit -m "Add 'Hello, Git!' to README"
```

### d. Push to the Remote

So far, all your changes are only on your local machine. To share them with others and update the online repository, you need to `git push`. This command uploads your commits from your local branch to the remote one.

```bash
git push origin main
```

**Note:** `origin` is the default name for the remote repository, and `main` is the name of the branch.

-----

## 4\. Final Review

### a. Check the Log

To see a history of all the commits in the repository, use `git log`. This is a great way to review past changes and understand the project's history.

```bash
git log
```
