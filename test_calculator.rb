require "minitest/autorun"
require_relative "calculator"

class TestCalculator < Minitest::Test
  def test_add
    assert_equal 5, Calculator.add(2, 3)
  end

  def test_subtract
    assert_equal 1, Calculator.subtract(3, 2)
  end

  def test_divide
    assert_equal 5.0, Calculator.divide(10, 2)
  end

  def test_divide_float_result
    assert_equal 3.5, Calculator.divide(7, 2)
  end

  def test_divide_zero_numerator
    assert_equal 0.0, Calculator.divide(0, 5)
  end

  def test_divide_negative
    assert_equal(-2.0, Calculator.divide(-6, 3))
  end

  def test_divide_negative_divisor
    assert_equal(-2.0, Calculator.divide(6, -3))
  end

  def test_divide_both_negative
    assert_equal 2.0, Calculator.divide(-6, -3)
  end

  def test_divide_float_inputs
    assert_equal 2.75, Calculator.divide(5.5, 2.0)
  end

  def test_divide_by_zero_raises
    assert_raises(ArgumentError) { Calculator.divide(10, 0) }
  end
end
