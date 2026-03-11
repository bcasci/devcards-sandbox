class Calculator
  def divide(a, b)
    raise ArgumentError, "Cannot divide by zero" if b.zero?
    a.to_f / b
  end
end
