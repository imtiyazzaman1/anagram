# Anagram

## Task
Write a command line app in the language of your choice which implements the following user story:

```
As an investigator,
I would like to check whether a word is an anagram of any of the words in a given list,
so that I can solve the mystery of the crime, given the clues left behind.
```
## Acceptance Criteria
1. The following are accepted as input:
  - Word to check (known as the subject)
  - A file containing the list of words to check against
2. The output should be the list of words that are anagrams of the subject

## My Approach
I followed a TDD approach while building this program. The user story was broken down into a feature test which mimics the user interaction; this allowed me to confirm when I had successfully implemented a change to my program. Unit tests were used to test the classes and each test was fully isolated.

`RSpec` was my choice of testing framework and coverage reports were generated using `simplecov` - test coverage is at 100%.

The program follows an OO design where each class fulfils a single responsiblity.

Based on the user story provided, I chose to implement a command line interface which can be found in `main.rb`. This would allow the user to input a word (case-insensitive) as well choose a file containing a list of words. Currently, this repo includes a file of word but a user would be able to add files and then select the file when running the application.

## Prerequisites
The following will need to be installed on your system:
- Ruby
- `bundler` to install dependancies

## Installation
1. Clone this repo
2. `cd` into the directory
3. `bundle install` to install dev dependancies
4. `ruby main.rb` to launch application

## Tests
Run `rspec` while in the directory

The test files can be found in the `spec` folder.

## How to Use The Application
Upon the loading `main.rb`, the user is prompted to enter a word. This is case insensitive but must contain only letters - entering any numbers of special characters will cause the program to throw an error.

After entering a word, the user is prompted to enter the file name of the file they wish to check against. This file must be a `txt` file located in the roor of the directory - if the file is not found, it will throw an error.

If the program finds any anagrams they will the be displayed.

### Example Usage
```
$ ruby main.rb

Enter a word
stop
Enter the name of the file contain a list of words
word_list.txt
The anagrams are:
post
pots
tops
opts
spot
```
### Loading Your Own Word List
You can load your own list of words but they must adhere to the following:
- The file must be a `.txt` file
- Each word must be on a new line

## Known Issues
Currently, there is no check to see if the same word appears more than once within the selected file. There is also no check for the same word containing capital letters, so `stop`, `Stop` and `STOP` would be all be transferred to the `WordBank`
