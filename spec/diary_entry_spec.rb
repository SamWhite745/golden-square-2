require 'diary_entry'

RSpec.describe DiaryEntry do
  context "initialize" do
    it "gets title" do
      entry = DiaryEntry.new("My day", "My day was very good")
      expect(entry.title).to eq "My day"
    end
    
    it "gets contents" do
      entry = DiaryEntry.new("My day", "My day was very good")
      expect(entry.contents).to eq "My day was very good"
    end

    it "gets word count" do
      entry = DiaryEntry.new("My day", "My day was very good")
      expect(entry.count_words).to eq 5
    end
  end

  describe "#reading_time" do
    it "returns the amount of minutes taken to read an even number of words" do
      entry = DiaryEntry.new("My day", "My day was very very good")
      expect(entry.reading_time(2)).to eq 3
    end

    it "returns the amount of minutes taken to read an odd number of words" do
      entry = DiaryEntry.new("My day", "My day was very good")
      expect(entry.reading_time(2)).to eq 3
    end

    context "given a less than 0 time to read" do
      it "fails" do
        entry = DiaryEntry.new("My day", "My day was very good")
        expect {entry.reading_time(0)}.to raise_error "reading speed needs to be above 0"
      end
    end
  end

  describe "#reading_chunk" do
    context "given some content too large for the user to read" do
      it "returns a the chunk the user can read" do
        entry = DiaryEntry.new("My day", "My day was very very good")
        expect(entry.reading_chunk(2,2)).to eq "My day was very"
      end

      it "returns the next chunk if the user has already read some" do
        entry = DiaryEntry.new("My day", "one two three four five six seven eight nine ten")
        entry.reading_chunk(2,2) # => "one two three four"
        expect(entry.reading_chunk(2,2)).to eq "five six seven eight"
      end
    end

    context "given enough time to read all the contents" do
      it "returns the whole remaining contents" do
        entry = DiaryEntry.new("My day", "one two three four five six seven eight nine ten")
        expect(entry.reading_chunk(2,20)).to eq "one two three four five six seven eight nine ten"
      end
    end

    context "having read the whole contents" do
      it "it loops back to the beggining" do
        entry = DiaryEntry.new("My day", "one two three four five six seven eight nine ten")
        entry.reading_chunk(2,20) # => "one two three four five six seven eight nine ten"
        expect(entry.reading_chunk(2,2)).to eq "one two three four"
      end
    end

    context "reading speed is below or equal to 0" do
      it "fails" do
        entry = DiaryEntry.new("My day", "hello world")
        expect {entry.reading_chunk(0,10)}.to raise_error "reading speed needs to be above 0"
      end
    end
  end
end