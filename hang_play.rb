require_relative 'hangman'
 
# figure out a random word to use for the game
class HangPlay
 
  # Starts the hangman game
  def self.start
    @@game = Hangman.new("lemonade")

    while (@@game.won? == false) && (@@game.lost? == false) # or create another method  !@@game.game_over?
      self.show_round
    end
  end

  def self.chances()

  end

  def self.make_line()
  	puts ""
  end
 
  def self.show_round
    self.make_line()
    puts "Board: #{@@game.board}"
    self.make_line()
    puts "Guessed: "
    # wrong guesses
    self.make_line()
    self.make_line()
    puts "Chances: #{@@game.chances}"
    self.make_line()
    puts "Enter guess:"
    letter = gets.chomp
    puts "The letter is: #{letter}"
    @@game.guess!(letter)
  end
end



# Helps to separate the code, group things that belong together (and in the same class)
# How would you do unit testing for a script? Impossible to load hangman_runner.rb from another file 
# HangmanUI    vs.   Ruby Script

# class HangmanUI

# 	def start_game
# 		game = Hangman.new()
# 	end

# 	def display_round
# 	end
# end