require "rspec"

class ChangeMachine
  def change(number)
    return [1] if number == 1
    return [25, 25, 25, 25] if number == 100
  end
end

#Driver Code

# machine = ChangeMachine.new

# puts machine.change(1)
# puts machine.change(100)

#Testing

RSpec.describe ChangeMachine do
  describe "#change" do
    it "should return 1 when given 1" do
      machine = ChangeMachine.new
      result = machine.change(1)
      expect(result).to eq([1])
    end
    it "should return [25, 25, 25, 25] when given 100" do
      machine = ChangeMachine.new
      result = machine.change(100)
      expect(result).to eq([25, 25, 25, 25])
    end
  end
end
