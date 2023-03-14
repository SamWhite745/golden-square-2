require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "cuts string when more than five words" do
    expect(make_snippet("Hello world, my name is Sam White")).to eq "Hello world, my name is..."
  end

  it "returns string when less than 5 words" do
    expect(make_snippet("Hello world")).to eq "Hello world"
  end
end