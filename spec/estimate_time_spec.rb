require "estimate_time"

RSpec.describe "estimate_time method" do
  it "Takes a string of words and returns the time to read" do
    expect(estimate_time("Hello world!")).to eq 1
  end

  it "Takes a longer string of words and returns the time to read" do
    expect(estimate_time("Hello world!, Ruby, JavaScript, HTML, CSS are all programming languages")).to eq 5
  end

  it "Fails when given no words" do
    expect { estimate_time("") }.to raise_error "No words given!"
  end
end