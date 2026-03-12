# A simple calculator module for DevCards sandbox testing.
# Agents are expected to add missing operations.
module Calculator
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    a - b
  end

  def self.multiply(a, b)
    a * b
  end

  def self.divide(a, b)
    raise ArgumentError, "Division by zero" if b == 0
    a.to_f / b
  end

  def self.power(base, exponent)
    if exponent < 0
      raise ArgumentError, "Division by zero" if base == 0
      1.0 / (base ** -exponent)
    else
      base ** exponent
    end
  end
end
