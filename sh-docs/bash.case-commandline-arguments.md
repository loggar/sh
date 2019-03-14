# How to parse command line arguments using Bash case statements

- https://medium.freecodecamp.org/how-to-parse-command-line-arguments-using-bash-case-statements-42d5c307d1c2

This Bash script tutorial will present an easy to follow guide to writing case statements. It will show you how to apply these to parse and handle command line arguments. You will learn to write custom scripts that take advantage of its concise syntax and pattern matching that can be applied to many kinds of programming tasks.

## Introduction

In Bash syntax, a case statement starts with `case` and ends with `esac`. Here is a summary from the Linux Documentation Project that explains some keywords and concepts. This tutorial will explain step-by-step how to apply these in your Bash scripts.

> Each `case` is an expression matching a pattern. The commands in the `COMMAND-LIST` for the first match are executed. The `|` symbol is used for separating multiple patterns, and the `)` operator terminates a pattern list. Each `case` plus its according commands are called a clause. Each clause must be terminated with `;;`. Each `case` statement is ended with the `esac` statement.

## Example script

This is the Bash script that will be covered in this tutorial, with explanations of each part of the script and what they do.

```sh
#!/bin/bash
echo "Starting sctipt $0"
display_usage() {
  echo
  echo "Usage: $0"
  echo
  echo " -h, --help   Display usage instructions"
  echo " -p, --print  Print welcome message"
  echo
}
print_message() {
  echo
  echo "Welcome to Bash case statements!"
  echo
}
raise_error() {
  local error_message="$@"
  echo "${error_message}" 1>&2;
}
argument="$1"
if [[ -z $argument ]] ; then
  raise_error "Expected argument to be present"
  display_usage
else
  case $argument in
    -h|--help)
      display_usage
      ;;
    -p|--print)
      print_message
      ;;
    *)
      raise_error "Unknown argument: ${argument}"
      display_usage
      ;;
  esac
fi
echo "Finished script $0"
```

Here is the output from running the script with the `--print` argument.

```
$ ./bashcase.sh --print
```

## The case statement structure

This `case` statement provides three options: to display help, to print a string, or to raise an error for any other argument passed when running the script. Below are what some of the main keywords do in relation to the code structure.

```sh
case $argument in
    -h|--help)
      display_usage
      ;;
    -p|--print)
      print_message
      ;;
    *)
      raise_error "Unknown argument: ${argument}"
      display_usage
      ;;
esac
```

- `case` keyword starts the statement block
- `in` follows the variable to be checked in the case statement
- `)` ends a pattern to match against the variable (see more below)
- `;;` ends a section

## Pattern matching

The `$argument` variable stores the value of $1, which is the first argument in the parameter list passed to a Bash script or function. The argument is checked against each pattern in order. A set of conditions to check against starts off a line of each `case` clause.

- The pattern, or set of conditions, to test for a match ends with `)`
- You can have multiple options to match separated by `|`

This will match both `-h` or `--help`. When this happens, the code in the case clause is activated, in this case, to call the function `display_usage` to display instructions to the user.

Each clause ends with `;;` and the case statement finishes. The code will continue to run from the end of the case statement, as shown by the keyword `esac`. You would be able to observe this in the terminal when it prints the below message.

```
$ ./bashcase.sh --help
```

## Wildcards

You may want to catch anything that is not defined in the case statement. The wildcard to match all is defined as *. For example, if you want to provide a helpful error message, you can print one that explains the cause of the issue.

```sh
*)
  raise_error "Unknown argument: ${argument}"
  display_usage
  ;;
```

```
$ ./bashcase.sh what?
Unknown argumant: what?
```

## Extensions

There are many ways to add further code around case statements to increase the robustness of the code and extend what they can do. Here are a few suggestions to look into further: argument validations and while loops to multiple arguments.

### Argument validation

It is useful to determine whether expected arguments are present and in the correct format before executing code. Here is an example of how to check for the presence of an argument.

```sh
if [[ -z $argument ]] ; then
  raise_error "Expected argument to be present"
  display_usage
else ...
```

The `if` condition with the double square brackets calls a test on the argument, with the `-z` option used to return `true` when there is no value.

```
$ ./bashcase.sh
Expected argument to be present
```

### While loops

```sh
while CONDITION_IS_TRUE ; do
  COMMANDS
done
```

