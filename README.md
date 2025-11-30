# word-counter

A simple command-line tool (or script set) to count words in text — implemented with AWK / Shell.

## What is it  

This repository provides a minimal word-count utility (or utilities) to count words in plain text files. It is implemented using AWK and shell script.

##  Repository Structure
* /count.awk -> AWK script to count words
* /count.sh  -> Shell wrapper script (or alternative)
* /text.txt -> Example text file (for testing/demo)

## Features

#### 1. Count total words
Counts how many words appear in the input text or in the provided file.

#### 2. Word frequency (count each word)
Calculates how many times each word appears and prints them in a clean table format.

#### 3. Character frequency
Counts how many times each character appears (including spaces, letters, numbers, symbols).

#### 4. Line count
Counts the total number of lines in the input text or file.

#### 5. Table-formatted output
All results are displayed in a simple table format for easier reading.

##  Usage  

### Using the AWK script directly  
```bash
awk -f count.awk text.txt
```

### Using the shell script
```bash
./count.sh text.txt
```

### Typing text manually (interactive mode)

You can also run the script without providing a file.
Just execute:
```bash
./count.sh
```

Then type or paste any text you want to analyze.
When you’re done, press Ctrl+D and the script will count the words from your input.