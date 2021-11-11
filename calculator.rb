class Calculator
  def double(num)
    return num + num
  end

  def add(num1, num2)
    return num1 + num2
  end

  def subtract(num1, num2)
    return num1 - num2
  end

  def multiply(num1, num2)
    return num1 * num2
  end

  def divide(num1, num2)
    return num1 / num2
  end

  def average(num1, num2, num3)
    return (num1 + num2 + num3) / 3
  end

  def square(num)
    return num * num
  end
end

calc = Calculator.new
puts calc.double(50)
puts calc.add(4, 7)
puts calc.subtract(70, 30)
puts calc.multiply(5, 3)
puts calc.divide(90, 5)
puts calc.average(10, 40, 70)
puts calc.square(3)
