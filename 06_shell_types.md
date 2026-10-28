# Practical 6: Bash, Bourne Shell and C Shell

## Aim
To study common Unix/Linux shells.

- **Bourne shell (`sh`)**: classic Unix shell; widely used for portable scripts.
- **Bash (`bash`)**: Bourne Again Shell; adds history, completion, arrays, and many interactive features.
- **C shell (`csh`)**: shell with syntax influenced by the C programming language; often encountered in legacy environments.
- **tcsh**: enhanced version of C shell.

## Identify and compare
```bash
echo "$SHELL"     # configured login shell path (not always the current process)
ps -p $$ -o comm= # current shell process name
cat /etc/shells   # shells allowed for login, where available
bash --version
sh --version      # behavior depends on the /bin/sh implementation
csh --version     # may not be installed
```

## Example
Bash:
```bash
for x in 1 2 3; do
  echo "$x"
done
```
C shell uses different syntax:
```csh
foreach x (1 2 3)
  echo $x
end
```

## Result
The purpose and basic differences of common shells were studied.
