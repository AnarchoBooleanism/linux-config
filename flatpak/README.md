## Flatpak apps list

This folder contains `apps.txt`, which is a list of Flatpak applications that have been installed.

To backup the list of Flatpak applications to `apps.txt`, run `flatpak list --columns=application --app | tail -n +1 | tee ./flatpak/apps.txt`
- `flatpak list --columns=application --app` - Print the details of all Flatpak applications that are explicitly installed apps (`--app`), and only print the application name column of this info (`--columns=application`); the output gets piped to the next command
- `tail -n +1` - Skip the first line of the previous command, since the previous command usually prints **`Application ID`** as the first line, and we only want the names of Flatpak applications; the output gets piped to the next command
- `tee ./flatpak/apps.txt` - Writing all of the output from the previous command to `apps.txt`, overwriting any existing contents of the file

To reinstall all of these Flatpak applications, run `xargs flatpak install < ./flatpak/apps.txt` (explanation: xargs uses the contents of `apps.txt` as arguments for `flatpak install`, then runs the command)