# linux-config

Configuration files and scripts to use for my Linux devices (currently on Arch Linux)

Each branch has its own `device-id` file, which identifies the device it is for.
Examples include "desktop" and "laptop"

As well, have a folder for secrets, known as "secrets", which is ignored by Git.

If reinstalling a fresh system, make sure to apply the aconfmgr config, synchronize your home folder with the dotfiles repository with stow, and install all of the listed Flatpak apps.

**NOTE**: When starting from a fresh installation (with no `.config` folders yet), since stow will create symbolic links for entire directories that don't exist in the target, as opposed to the files within the directories, make sure to copy all of the individual dotfiles first to their respective target locations before adopting your dotfiles with stow; this is to avoid polluting the local Git repository with files and changes that won't be added to a commit.

## Important commands

- `update` - Runs `paru` and `flatpak update`
- `update-config` - Updates the local copy of this repo, and the dotfiles associated with it
- `stow -t ~ dotfiles --adopt` - After creating a commit, this command allows you to adopt all existing home folder files that have corresponding files in the dotfiles directory, moving those files into the dotfiles directory and replacing the original files with symbolic links. After adopting everything, make sure to reset your local Git repository directory to your latest commit (the HEAD) to make sure the system's state reflects that latest state.

## Important scripts/programs

- Flameshot for the screenshot script files