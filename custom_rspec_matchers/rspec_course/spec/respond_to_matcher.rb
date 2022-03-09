class HotChocolate
  def drink
    "Delicious"
  end

  def discard
    "Plop!"
  end

  def purchase(number)
    "Awesome, I purchased #{number} hot chocolates!"
  end
end

class Coffee
  def drink; end
  def discard; end
  def purchase(number); end
end

RSpec.describe HotChocolate do
  it "confirm that an object can respond to a method" do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :purchase)
  end

  it "confirms an object can respond to a method with arguments" do
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
