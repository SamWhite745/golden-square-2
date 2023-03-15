require 'grammar_stats'

RSpec.describe GrammarStats do

  describe "#check" do
    it "returns true with acceptable grammar" do
      gs = GrammarStats.new
      expect(gs.check("Hello World!")).to eq true
    end

    it "returns false when string doesn't start with a capital" do
      gs = GrammarStats.new
      expect(gs.check("hello World!")).to eq false
    end

    it "returns false when ending without proper punctuation" do
      gs = GrammarStats.new
      expect(gs.check("hello World")).to eq false
    end
  end

  describe "#percentage_good" do
    it "returns the correct percentage of passed checks" do
      gs = GrammarStats.new
      gs.check("Hello World!")
      gs.check("yo bro")
      expect(gs.percentage_good).to eq 50
    end

    it "returns the correct percentage of passed checks with no incorrect" do
      gs = GrammarStats.new
      gs.check("Hello World!")
      gs.check("Yo bro?")
      expect(gs.percentage_good).to eq 100
    end

    it "returns the correct percentage when given odd amount of checks" do
      gs = GrammarStats.new
      gs.check("Hello World!")
      gs.check("Yo bro?")
      gs.check("nope")
      expect(gs.percentage_good).to eq 67
    end
  end
end