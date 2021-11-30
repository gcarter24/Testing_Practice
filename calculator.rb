require "rspec"

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

# Driver Code

# calc = Calculator.new
# puts calc.double(50)
# puts calc.add(4, 7)
# puts calc.subtract(70, 30)
# puts calc.multiply(5, 3)
# puts calc.divide(90, 5)
# puts calc.average(10, 40, 70)
# puts calc.square(3)

# Testing
RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
    it "should work with decimals" do
      calculator = Calculator.new
      result = calculator.add(1.5, -3)
      expect(result).to eq(-1.5)
    end
  end
  describe "#double" do
    it "should return the number input doubled" do
      calc = Calculator.new
      result = calc.double(5)
      expect(result).to eq(10)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.double(-3)
      expect(result).to eq(-6)
    end
    it "should work with decimals" do
      calculator = Calculator.new
      result = calculator.double(-3.2)
      expect(result).to eq(-6.4)
    end
  end
  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(4, 2)
      expect(result).to eq(2)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.subtract(8, -3)
      expect(result).to eq(11)
    end
    it "should work with decimals" do
      calculator = Calculator.new
      result = calculator.subtract(9.6, 7.3)
      expect(result).to eq(2.3)
    end
  end
  describe "#multiply" do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(14, 2)
      expect(result).to eq(28)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.multiply(-6, 3)
      expect(result).to eq(-18)
    end
    it "should work with decimals" do
      calculator = Calculator.new
      result = calculator.multiply(5.25, 7)
      expect(result).to eq(36.75)
    end
  end
  describe "#divide" do
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      result = calculator.divide(15, 5)
      expect(result).to eq(3)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.divide(-45, 3)
      expect(result).to eq(-15)
    end
    it "should work with decimals" do
      calculator = Calculator.new
      result = calculator.divide(25, 12.5)
      expect(result).to eq(2)
    end
  end
  describe "#square" do
    it "should return squared numbers" do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.square(-9)
      expect(result).to eq(81)
    end
    it "should work with decimals" do
      calculator = Calculator.new
      result = calculator.square(4.25)
      expect(result).to eq(18.0625)
    end
  end
end
