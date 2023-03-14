require 'verify_punc'

RSpec.describe "verify_punc method" do
  it "takes acceptable punctuation string and returns true" do
    expect(verify_punc("Hello world.")).to eq true
  end

  it "starts with lowercase starting letter to return false" do
    expect(verify_punc("hello world.")).to eq false
  end

  it "ends without proper punctuation to return false" do
    expect(verify_punc("Hello world")).to eq false
  end

  it "ends with different ending punctuation to return true" do
    expect(verify_punc("Hello world!")).to eq true
  end

  it "multiple ending punctuation to return true" do
    expect(verify_punc("Hello world???")).to eq true
  end

  it "fails when given no text" do
    expect{verify_punc("")}.to raise_error "Nothing to verify"
  end
end