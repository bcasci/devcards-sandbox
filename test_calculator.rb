require "minitest/autorun"
require_relative "calculator"

class TestCalculator < Minitest::Test
  def test_add
    assert_equal 5, Calculator.add(2, 3)
  end

  def test_subtract
    assert_equal 1, Calculator.subtract(3, 2)
  end
end
