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

	def test_grandbash_return_even_more_numbers_match
		ticket = "54365"
		winner = ["54365", "44324", "54342"]
		assert_equal(["54365"],grandbash(ticket,winner))
	end

	def test_grandbash_return_5_digits_one_off
		ticket = "54365"
		winner = ["54265", "78945", "87946"]
		assert_equal(["54265"],grandbash(ticket,winner))
	end

	def test_grandbash_return_6_digits_match
		ticket = "543657"
		winner = ["543657", "778945", "877946"]
		assert_equal(["543657"],grandbash(ticket,winner))
	end

	def test_grandbash_multiple_return_6_digits_one_off
		ticket = "543654"
		winner = ["542654", "343654", "688888"]
		assert_equal(["542654","343654"],grandbash(ticket,winner))
	end

	def test_compare_strings_first
		first = "1234"
		second = "1235"
		assert_equal(3,compare_string(first,second))
	end

	def test_compare_strings_no_match
		first = "1234"
		second = "5678"
		assert_equal(0,compare_string(first,second))
	end

	def test_compare_strings_1_match
		first = "1234"
		second = "4444"
		assert_equal(1, compare_string(first,second))
	end



end

