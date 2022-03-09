RSpec.describe "raise error matcher" do
  def some_method
    x
  end

  class CustomError < StandardError; end

  it "can check for a specfic error being raised" do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it "can check for custom error" do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
