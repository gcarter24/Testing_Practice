require_relative "../sandwich.rb"

describe Sandwich do
  context "when the sandwich should be vegan" do
    # let(:sandwich) { Sandwich.new(false, false, ["lettuce", "tomato", "mustard"]) }

    # Same as
    # let(:sandwich) do Sandwich.new(false, false, ["lettuce", "tomato", "mustard"]) end
    it "should not have meat" do
      expect(vegan_sandwich.meat).to eq(false)
    end
    it "should not have cheese" do
      expect(vegan_sandwich.cheese).to eq(false)
    end
    it "should not have mayo" do
      expect(vegan_sandwich.condiments).to_not include("mayo")
    end
  end
  context "when the sandwich shouldn't be vegan" do
    before(:each) { @sandwich = Sandwich.new(true, true, ["lettuce", "tomato", "mayo"]) }
    it "should have meat" do
      expect(@sandwich.meat).to eq(true)
    end

    it "should have cheese" do
      expect(@sandwich.cheese).to eq(true)
    end
    it "should have mayo" do
      expect(@sandwich.condiments).to include("mayo")
    end
  end
end

# **Storing in a method** Not as widely used for simplier things but may be useful in a large app
def vegan_sandwich
  Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
end
