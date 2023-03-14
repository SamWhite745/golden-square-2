require 'count_words'

RSpec.describe 'count_words method' do
  it "returns the number of words in a string" do
    expect(count_words("Hello world my name is Sam White")).to eq 7
  end

  it "returns the 0 for an empty string" do
    expect(count_words("")).to eq 0
  end

  it "returns the 1 for a single word in a string" do
    expect(count_words("Hello")).to eq 1
  end
end