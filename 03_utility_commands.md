# Practical 3: Unix/Linux General-Purpose Utility Commands

| Command | Purpose | Example |
|---|---|---|
| `man` | Read command manual | `man ls` |
| `who` | Show logged-in users | `who` |
| `cat` | Display/concatenate files | `cat notes.txt` |
| `cd` | Change directory | `cd ~/Documents` |
| `cp` | Copy files/directories | `cp a.txt b.txt`; `cp -r dir1 dir2` |
| `ps` | Show processes | `ps -ef` |
| `ls` | List directory entries | `ls -la` |
| `mv` | Move/rename | `mv old.txt new.txt` |
| `rm` | Remove files | `rm file.txt`; `rm -r folder` |
| `mkdir` | Create directory | `mkdir lab` |
| `rmdir` | Remove empty directory | `rmdir empty_dir` |
| `echo` | Print text/variables | `echo "$HOME"` |
| `more` | Page through text | `more notes.txt` |
| `date` | Show date/time | `date` |
| `time` | Measure command duration | `time ls` |
| `kill` | Send signal to process | `kill PID` |
| `history` | Show shell command history | `history` |
| `chmod` | Change permissions | `chmod 755 script.sh` |
| `chown` | Change ownership | `sudo chown user:group file` |
| `finger` | User information (may need installation) | `finger username` |
| `pwd` | Print current directory | `pwd` |
| `cal` | Display calendar (may need `ncal`) | `cal` |
| `logout` | Exit login shell | `logout` |
| `shutdown` | Shut down/reboot system | `sudo shutdown -h now` |

## Notes
- Use `man COMMAND` or `COMMAND --help` for documentation.
- `rm`, `kill`, `chown`, and `shutdown` can have significant effects. Confirm targets and permissions first.
- `finger` and `cal` may not be installed by default on all distributions.

## Result
The listed utility commands and their basic usage were studied.
