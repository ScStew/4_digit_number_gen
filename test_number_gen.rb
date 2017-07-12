require "minitest/autorun"
require_relative "number_gen.rb"
class Number_gen_test < Minitest::Test

  

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_for_empty_array
		ticket = []
		winner = []
		assert_equal([],grandbash(ticket,winner))
	end

	def test_returns_winner_array_empty
		ticket = "1243"
		winner = []
		assert_equal([],grandbash(ticket,winner))
	end

	def test_your_ticket_with_a_match
	 ticket = "1234"
	 winner = ["1234", "5555", "8789"]
	 assert_equal(["1234"], grandbash(ticket,winner))
	end

	def test_ticket_no_match
		ticket = "5432"
		winner = ["1234", "5555", "8789"]
		assert_equal([],grandbash(ticket,winner))
	end

	def test_one_off
		ticket = "1234"
		winner = ["1235","5555","8789"]
		assert_equal(["1235"],one_off?(ticket,winner))
	end

	def test_one_off_return_multiple_numbers
		ticket = "5432"
		winner = ["5438", "5555", "5434"]
		assert_equal(["5438","5434"],one_off?(ticket,winner))
	end
	
	def test_gandbash_return_multiple_numbers
		ticket = "5432"
		winner = ["5438", "5555", "5434"]
		assert_equal(["5438","5434"],grandbash(ticket,winner))
	end

	def test_grandbash_return_even_more_numbers
		ticket = "5432"
		winner = ["5438", "4432", "5434"]
		assert_equal(["5438", "4432", "5434"],grandbash(ticket,winner))
	end

end

