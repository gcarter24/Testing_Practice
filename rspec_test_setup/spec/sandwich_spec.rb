require_relative "../sandwich.rb"

describe Sandwich do
  context "when the sandwich should be vegan" do
    it "should not have meat" do
      sandwich = Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
      expect(sandwich.meat).to eq(false)
    end
    it "should not have cheese" do
      sandwich = Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
      expect(sandwich.cheese).to eq(false)
    end
    it "should not have mayo" do
      sandwich = Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
      expect(sandwich.condiments).to_not include("mayo")
    end
  end
end
