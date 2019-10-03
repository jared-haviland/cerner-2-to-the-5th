# Mastermind

This is a Ruby implementation of the [Mastermind](https://en.wikipedia.org/wiki/Mastermind_(board_game)) board game! The objective of the game is to crack the code - the computer will randomly select a four-digit code made up of numbers from 1-6, and it will give you clues after each guess to tell you how close you are to the answer. You win if you can guess the correct sequence of numbers in ten guesses or less.

Here is an example of a game in progress:
```
------------------
|   Mastermind   |
------------------

First number after guess: # of guesses in the correct position
Second number after guess: # of guesses that are in the code,
but not in the correct position

Your Guesses:

1 2 3 4 | 0 4
3 2 4 1 | 1 3
2 3 4 1 | 2 2
2 3 1 4 | 1 3
- - - - | - -
- - - - | - -
- - - - | - -
- - - - | - -
- - - - | - -
- - - - | - -

Guesses remaining: 6
Enter your 4-digit guess, with each digit separated by a space (ex: '1 4 2 6'):
```

Can you crack the code? Have fun, and good luck!