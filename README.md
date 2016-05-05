Basic Commands
==============
    cd someproject
    git init                      # Turn this directory into a git directory
    git add .                     # Take a git snapshot of all the files in this directory, add them to a git index
    git rm somefile               # Remove file from index and file system
    git rm --cached               # Remove file from index ONLY
    git add file1 file2 file3     # Add updated files to the git index
    git commit                    # Save the current state of the git index, this will prompt you for a message
    git commit -a                 # Save all files, edited/deleted in the current state of the git index, this will prompt you for a message
    git diff                      # See what pending changes that will be made in the next commit
    git diff --cached             # See what changes will be made in the next commit
    git status                    # Get a brief summary about changes to the index, etc.
    git log                       # View history of your changes
    git log -p                    # View changes at each commit
    git log --stat --summary      # Get an overview of the changes in each commit
    git revert [commit number]    # Revert back to a particular version

Branch Management
===================
    git branch                    # See all branches of development
    git branch new_version        # Create a new branch of development
    git checkout new_version      # Switch to the new branch
    git merge new_version         # Merge the changes from new_version into the master branch
    git diff                      # If there's any conflicts with the merge, they'll show up here
    git commit                    # Commit the merge!
    gitk                          # Shows a representation of the merge
    git branch -d new_version     # Delete the other branch, and ensure that the branch changes were merged
    git branch -D stupid_version  # Delete a branch forever
    git status                    # Show summary of pending commits

Collaborative Commands
====================  
    git clone /path/to/some_other_project myproject     # Clone an existing project, including all branches(all non-master branches are hidden)
    git branch -a                                       # Show all branches including hidden branches(which are usually stored in origin/[branch name]
    git pull /path/to/some_other_project new_version    # Pull changes from an existing git repository and merge them into a branch
    git fetch /path/to/some_other_project master        # Pull changes from an existing repository without merging
    git log -p HEAD..FETCH_HEAD                         # Check the get log for differences between current version and fetched version
    gitk HEAD..FETCH_HEAD                               # Nice visual representation between the two
    git remote add some_other_project /path/other_proj  # Define a remote repository shortcut, stored in some_other_project/master
    git fetch some_other_project                        # Import changes from remote repository
    git merge some_other_project/master                 # Merge changes
  
Other Useful Commands
=====================
    git gc --aggressive           # Clean up git repository
    git [any command] --help      # Get help with a command
    git rm --cached filename      # Remove file from cache
  
Git Ignore
============
    git config --global core.excludesfile ~/.gitignore_global    # Add global git ignore file(with regexp support) to the index`
