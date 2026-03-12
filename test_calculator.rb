require "minitest/autorun"
require_relative "calculator"

class TestCalculator < Minitest::Test
  def test_add
    assert_equal 5, Calculator.add(2, 3)
  end

  def test_subtract
    assert_equal 1, Calculator.subtract(3, 2)
    assert_equal(-1, Calculator.subtract(2, 3))
    assert_equal 0, Calculator.subtract(5, 5)
    assert_equal(-2, Calculator.subtract(-3, -1))
    assert_equal(-5, Calculator.subtract(-3, 2))
    assert_equal 1.0, Calculator.subtract(1.5, 0.5)
    assert_equal 3, Calculator.subtract(3, 0)
    assert_equal(-3, Calculator.subtract(0, 3))
  end

  def test_multiply
    assert_equal 12, Calculator.multiply(3, 4)
    assert_equal 0, Calculator.multiply(0, 5)
    assert_equal(-6, Calculator.multiply(-2, 3))
    assert_equal 6, Calculator.multiply(-2, -3)
  end

  def test_divide
    assert_equal 2.0, Calculator.divide(6, 3)
    assert_equal 0.5, Calculator.divide(1, 2)
    assert_equal(-3.0, Calculator.divide(-6, 2))
    assert_equal(-3.0, Calculator.divide(6, -2))
    assert_equal 3.0, Calculator.divide(-6, -2)
    assert_equal 0.0, Calculator.divide(0, 5)
    assert_raises(ArgumentError) { Calculator.divide(1, 0) }
  end
end
