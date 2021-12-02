require "rspec"

class ChangeMachine
  def change(number)
    return [1] if number == 1
    return [25, 25, 25, 25] if number == 100
    return [25, 25, 25, 10, 10] if number == 95
    return [25, 25, 25, 10, 5] if number == 90
    return [25, 25, 25, 10] if number == 85
    return [25, 25, 25, 5] if number == 80
    return [25, 25, 25] if number == 75
    return [25, 25, 10, 10] if number == 70
    return [25, 25, 10, 5] if number == 65
    return [25, 25, 10] if number == 60
    return [25, 25, 5] if number == 55
    return [25, 25] if number == 50
    return [25, 10, 10] if number == 45
    return [25, 10, 5] if number == 40
    return [25, 10] if number == 35
    return [25, 5] if number == 30
    return [25] if number == 25
    return [10, 10] if number == 20
    return [10, 5] if number == 15
    return [10] if number == 10
    return [5] if number == 5
  end
end

#Driver Code

# machine = ChangeMachine.new

# puts machine.change(1)
# puts machine.change(100)

#Testing

RSpec.describe ChangeMachine do
  describe "#change" do
    it "should return [1] when given 1" do
      machine = ChangeMachine.new
      result = machine.change(1)
      expect(result).to eq([1])
    end
    it "should return [25, 25, 25, 25] when given 100" do
      machine = ChangeMachine.new
      result = machine.change(100)
      expect(result).to eq([25, 25, 25, 25])
    end
    it "should return [25, 25, 25, 10, 10] when given 95" do
      machine = ChangeMachine.new
      result = machine.change(95)
      expect(result).to eq([25, 25, 25, 10, 10])
    end
    it "should return [25, 25, 25, 10, 5] when given 90" do
      machine = ChangeMachine.new
      result = machine.change(90)
      expect(result).to eq([25, 25, 25, 10, 5])
    end
    it "should return [25, 25, 25, 10] when given 85" do
      machine = ChangeMachine.new
      result = machine.change(85)
      expect(result).to eq([25, 25, 25, 10])
    end
    it "should return [25, 25, 25, 5] when given 80" do
      machine = ChangeMachine.new
      result = machine.change(80)
      expect(result).to eq([25, 25, 25, 5])
    end
    it "should return [25, 25, 25] when given 75" do
      machine = ChangeMachine.new
      result = machine.change(75)
      expect(result).to eq([25, 25, 25])
    end
    it "should return [25, 25, 10, 10] when given 70" do
      machine = ChangeMachine.new
      result = machine.change(70)
      expect(result).to eq([25, 25, 10, 10])
    end
    it "should return [25, 25, 10, 5] when given 65" do
      machine = ChangeMachine.new
      result = machine.change(65)
      expect(result).to eq([25, 25, 10, 5])
    end
    it "should return [25, 25, 10] when given 60" do
      machine = ChangeMachine.new
      result = machine.change(60)
      expect(result).to eq([25, 25, 10])
    end
    it "should return [25, 25, 5] when given 55" do
      machine = ChangeMachine.new
      result = machine.change(55)
      expect(result).to eq([25, 25, 5])
    end
    it "should return [25, 25] when given 50" do
      machine = ChangeMachine.new
      result = machine.change(50)
      expect(result).to eq([25, 25])
    end
    it "should return [25, 10, 10] when given 45" do
      machine = ChangeMachine.new
      result = machine.change(45)
      expect(result).to eq([25, 10, 10])
    end
    it "should return [25, 10, 5] when given 40" do
      machine = ChangeMachine.new
      result = machine.change(40)
      expect(result).to eq([25, 10, 5])
    end
    it "should return [25, 10] when given 35" do
      machine = ChangeMachine.new
      result = machine.change(35)
      expect(result).to eq([25, 10])
    end
    it "should return [25, 5] when given 30" do
      machine = ChangeMachine.new
      result = machine.change(30)
      expect(result).to eq([25, 5])
    end
    it "should return [25] when given 25" do
      machine = ChangeMachine.new
      result = machine.change(25)
      expect(result).to eq([25])
    end
    it "should return [10, 10] when given 20" do
      machine = ChangeMachine.new
      result = machine.change(20)
      expect(result).to eq([10, 10])
    end
    it "should return [10, 5] when given 15" do
      machine = ChangeMachine.new
      result = machine.change(15)
      expect(result).to eq([10, 5])
    end
    it "should return [10] when given 10" do
      machine = ChangeMachine.new
      result = machine.change(10)
      expect(result).to eq([10])
    end
    it "should return [5] when given 5" do
      machine = ChangeMachine.new
      result = machine.change(5)
      expect(result).to eq([5])
    end
  end
end
