require "test/unit"
require_relative "hangman2"

class HangmanTest < Test::Unit::TestCase

	def test_intialize_starts_with_eight_chances
		h = Hangman.new("kggdfdsa")
		assert_equal 8, h.chances
	end

	def test_intialize_has_an_empty_board	
		
		h = Hangman.new("hello")  
		assert_equal "_ _ _ _ _", h.board
	end

	def test_wrong_guesses_are_stored_in_guessed_array
		h = Hangman.new("hello")
		assert_equal false, h.guess?
	end
 
	# def test_game_board_has_all_guesses_displayed
	# 	h = Hangman.new("hello")
	# 	assert_equal "h e l l o", h.board
	# end


	def test_initialize_accepts_and_uses_the_word
		h = Hangman.new("hello")
		assert_equal "hello", h.word
	end

	def test_initialize_starts_with_no_guesses
		h = Hangman.new("helloes")
		assert_equal [], h.guessed
	end

	# def test_board_outputs_a_correct_guess
	# 	h = Hangman.new("hello")
	# 	assert_equal true, h.guess?
	# end

	# def test_board_outputs_when_guess_is_incorrect
	# 	h = Hangman.new("treehouse")
	# 	assert_equal false, h.guess?
	# end

	# def test_game_ends_when_last_letter_is_guessed_correctly
	# 	word = "hello"
	# 	h = Hangman.new(word)
	# end

end




# 		# count = length of word, and if count = 5, then coolio
# 		word = "hello"
# 		board = "h e l l _"
# 		h = Hangman.new(word)
# 		#Done with setup - hopefully
# 		# guess with 'o' (the final letter)
		
# 		# game ends
# 		assert_equal true, Hangman.won?
# 	end

# 	def test_game_ends_when_number_of_chances_equals_zero_LOSER
# 		assert_equal 0, (guess_num)
# 	end

# 	# def test_game_ends_when_word_equals_board_CHICKEN_DINNER
# 	# 	assert_equal Hangman.board, Hangman.word
# 	# end

