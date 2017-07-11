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

	def test_one_number_off
		ticket = "1234"
		winner = ["1235","5555","8789"]
		assert_equal(["1234"],one_off?(ticket,winner))
	end

end

