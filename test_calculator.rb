require "minitest/autorun"
require_relative "calculator"

class TestCalculator < Minitest::Test
  def test_add
    assert_equal 5, Calculator.add(2, 3)
  end

  def test_subtract
    assert_equal 1, Calculator.subtract(3, 2)
    assert_equal 2, Calculator.subtract(5, 3)
    assert_equal(-2, Calculator.subtract(3, 5))
    assert_equal 0, Calculator.subtract(0, 0)
    assert_equal 1, Calculator.subtract(-2, -3)
    assert_equal(-7, Calculator.subtract(3, 10))
    assert_in_delta 2.3, Calculator.subtract(3.5, 1.2)
  end
end
