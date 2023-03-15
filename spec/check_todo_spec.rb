require 'check_todo'

RSpec.describe "check_todo method" do
  
  it "returns true when string contains #TODO" do
    expect(check_todo("#TODO wash the dishes")).to eq true
  end

  it "returns false when missing # in TODO" do
    expect(check_todo("TODO wash the dishes")).to eq false
  end

  it "returns false when string contains lowercase #TODO" do
    expect(check_todo("#todo wash the dishes")).to eq false
  end

  it "returns false when string doesnt contains #TODO" do
    expect(check_todo("wash the dishes")).to eq false
  end

  it "returns true when string contains #TODO anywhere in the string" do
    expect(check_todo("I need to #TODO wash the dishes")).to eq true
  end

  it "Throws an error when handed an empty string" do
    expect{ check_todo("") }.to raise_error "Nothing found"
  end
end