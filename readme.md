# HiLo&Occurence

## Description

This are a few Ruby apps to play with numbers (mainly lottery type numbers). 

### Generate.rb

This generates a .csv from 2 input items:

* Highest Number in the set
* How many numbers to generate

For example to generate 200 random numbers in the range of 1 through 59 you would run    

    ruby generate.rb 59 200


### Hilo.rb

This goes through the generated .csv file from above and counts the occurences of each number.

So just run

    ruby hilo.rb


## Future plans

Allow hilo to take in a variable of the a csv file but default to the lotter.csv if none entered.

