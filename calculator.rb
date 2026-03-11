# A simple calculator module for DevCards sandbox testing.
# Agents are expected to add missing operations.
module Calculator
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    a - b
  end

  def self.divide(a, b)
    raise ArgumentError, "Cannot divide by zero" if b == 0

    a.to_f / b
  end
end
