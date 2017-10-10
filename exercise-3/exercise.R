# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('red', 'black', 'blue', 'yellow', 'white', 'purple')

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(color) {
  real.color <- sample(marbles, 1)
  answer <- ifelse(color == real.color, "You are right!", "You are wrong!")
  return (paste(answer, "The answer is", real.color))
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take
MarbleGame <- function() {
  marbles <- c('red', 'black', 'blue', 'yellow', 'white', 'purple')
  count <- 0
  while(TRUE) {
    count <- count + 1
    guess <- readline(prompt = "Your guessed color: ")
    real <- sample(marbles, 1)
    if (guess == real) {
      print(paste0("Congratulations! You used ", count, " time(s) to get it right!"))
      return (0)
    } else {
      print("Hah hah! You get it wrong ^_^")
    }
  }
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability