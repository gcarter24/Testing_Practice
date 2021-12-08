require_relative "../sandwich.rb"

describe Sandwich do
  context "when the sandwich should be vegan" do
    let(:sandwich) { Sandwich.new(false, false, ["lettuce", "tomato", "mustard"]) }
    # Same as
    # let(:sandwich) do Sandwich.new(false, false, ["lettuce", "tomato", "mustard"]) end
    it "should not have meat" do
      expect(sandwich.meat).to eq(false)
    end
    it "should not have cheese" do
      expect(sandwich.cheese).to eq(false)
    end
    it "should not have mayo" do
      expect(sandwich.condiments).to_not include("mayo")
    end
  end
  context "when the sandwich shouldn't be vegan" do
    it "should have meat" do
      sandwich = Sandwich.new(true, true, ["lettuce", "tomato", "mayo"])
      expect(sandwich.meat).to eq(true)
    end

    it "should have cheese" do
      sandwich = Sandwich.new(true, true, ["lettuce", "tomato", "mayo"])
      expect(sandwich.cheese).to eq(true)
    end
    it "should have mayo" do
      sandwich = Sandwich.new(true, true, ["lettuce", "tomato", "mayo"])
      expect(sandwich.condiments).to include("mayo")
    end
  end
end
