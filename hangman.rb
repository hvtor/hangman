class Hangman

#This class will be used to run an instance of a hangman game
# It is only concerned with one run through the game
# It is not responsible for human interaction.

  attr_accessor :word
  attr_accessor :chances
  attr_accessor :board
  attr_accessor :guessed
  attr_accessor :wincount

  def initialize(word)
    @word = word.split("")
    @chances = 8
    @board = ('_ '*word.length).chop
    @guessed = []
    @index_arr = []
    @won = wincount = 0 # while player has not won, set instance variable of won to 0
    

    puts "Hangman game!"
  end
 
 def guess!(letter)
    
    # check to see if letter in the word
    valid_letter = word.include(letter) 
    if valid_letter 
        update_board(letter)
    else
          @chances -=1
          @guessed << (". "+letter)
    end
  end

  def chances()
    # if letter is in word, inject into guessed[] array
    # if letter is not in word, decrement chances
    if word[0..word.length]#.match(/letter/)
        guessed[]<<(letter)
        won()
    else
    # update @guessed[] array with letter
        chances -= chances
    end
    
  end

  def update_board(valid_letter)
    arr = @word.split
    arr.each {|x| arr[0..arr.length] word.index(x)
        indeces[] << word.index(valid_letter)
      }
    end

    http://ruby-doc.org/core-2.0/Array.html#method-i-select

    # if letter is in @word, go through the array 

    #if a letter is validated, add 1 to counter

  end

  def wrong_guesses()
    guess_arr = @guessed

  end

  def won ()
    wincount = wincount+1
    if board.
        puts "YOU WON!"
    end
  end 
end



# if valid letter

#   if scan is valid
#       at that index, input letter


