require "bouncer"
describe "Bouncer" do
  it "rejects xx from entering the venue" do
    bouncer = Bouncer.new
    bounced = bouncer.bounce("xx")
    expect(bounced).to be_truthy
  end
end
