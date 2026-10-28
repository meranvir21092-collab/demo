#!/usr/bin/env bash
# Practical 11: Simple scientific calculator (degree-based trigonometry)
set -u

read -rp "Enter first number: " a
read -rp "Enter operation (+ - * / ^ sqrt sin cos tan log ln): " op

case "$op" in
  sqrt|sin|cos|tan|log|ln)
    x="$a"
    ;;
  +|-|'*'|/|^)
    read -rp "Enter second number: " b
    ;;
  *)
    echo "Unsupported operation." >&2
    exit 1
    ;;
esac

# Use awk for basic arithmetic and common math functions.
case "$op" in
  +) awk -v x="$a" -v y="$b" 'BEGIN { printf "%.10g\n", x+y }' ;;
  -) awk -v x="$a" -v y="$b" 'BEGIN { printf "%.10g\n", x-y }' ;;
  '*') awk -v x="$a" -v y="$b" 'BEGIN { printf "%.10g\n", x*y }' ;;
  /)
    awk -v x="$a" -v y="$b" 'BEGIN { if (y==0) { print "Error: division by zero" > "/dev/stderr"; exit 1 } printf "%.10g\n", x/y }'
    ;;
  ^) awk -v x="$a" -v y="$b" 'BEGIN { printf "%.10g\n", x^y }' ;;
  sqrt) awk -v x="$x" 'BEGIN { if (x<0) { print "Error: square root of negative number" > "/dev/stderr"; exit 1 } printf "%.10g\n", sqrt(x) }' ;;
  sin) awk -v x="$x" 'BEGIN { pi=atan2(0,-1); printf "%.10g\n", sin(x*pi/180) }' ;;
  cos) awk -v x="$x" 'BEGIN { pi=atan2(0,-1); printf "%.10g\n", cos(x*pi/180) }' ;;
  tan) awk -v x="$x" 'BEGIN { pi=atan2(0,-1); v=cos(x*pi/180); if (v<1e-12 && v>-1e-12) { print "Error: tangent undefined" > "/dev/stderr"; exit 1 } printf "%.10g\n", tan(x*pi/180) }' ;;
  log) awk -v x="$x" 'BEGIN { if (x<=0) { print "Error: log requires a positive number" > "/dev/stderr"; exit 1 } printf "%.10g\n", log(x)/log(10) }' ;;
  ln) awk -v x="$x" 'BEGIN { if (x<=0) { print "Error: ln requires a positive number" > "/dev/stderr"; exit 1 } printf "%.10g\n", log(x) }' ;;
esac
