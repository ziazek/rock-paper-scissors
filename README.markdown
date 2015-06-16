# Rock Paper Scissors

## About

Best of Ruby Quiz, Chapter 9

## Requirements

Ruby 2.2.2

## Notes

In the [original](http://rubyquiz.com/quiz16.html), line 129 is `require File.join(p, file)`, but this gives an error. changed it to `require_relative` and it works.

## Usage

run `bundle install`

## Understanding the Question

Step 1. build a Random player

Step 2. build a player that tries to use statistics to find which object the opponent favours, and whether there are any repetitive patterns.

Step 3. build a player that follows the rules on [World RPS Society](http://worldrps.com/advanced-rps/sample-page/) ?

## Results

## Review

It's hard to beat a random player. 

The author recommends building 'cheater' players that rewrite others' #choose methods as an exercise. 

## License

This code is released under the [MIT License](http://www.opensource.org/licenses/MIT)


