require "minitest/autorun"
require_relative "number_gen.rb"
class Number_gen_test < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_for_array
		assert_equal([],grandbash)
	end
end
