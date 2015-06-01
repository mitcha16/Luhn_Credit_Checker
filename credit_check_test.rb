require 'minitest/autorun'
require_relative 'credit_check.rb'
require 'minitest/pride'

class CreditTest < Minitest::Test

def test_if_input_is_16_numbers
  assert_equal nil, Credit_Checker.new.check("00000")
end

def test_if_double_method_works
  assert_equal 18, Credit_Checker.new.double(9)
end

def test_for_valid_output_when_checking

  assert_equal "valid", Credit_Checker.new.check("5541808923795240")
end

def test_for_invalid_output_when_checking

  assert_equal "invalid", Credit_Checker.new.check("4024007106512380")
end

end