require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do

  it "initializes and adds an entry to the diary" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("Day One","This is my entry")
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]  
  end
  
  context "given a diary with several entries" do
    it "returns the total amount of words for all entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day One","This is my entry")
      diary_entry_2 = DiaryEntry.new("Day two","This is my second entry of the week")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 12
    end

    it "returns the time taken to read for all entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day One","This is my entry")
      diary_entry_2 = DiaryEntry.new("Day two","This is my second entry of the week")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 6
    end
  
    it "returns the longest entry that can be read in a given time" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day One","This is my entry")
      diary_entry_2 = DiaryEntry.new("Day two","This is my second entry of the week")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.find_best_entry_for_reading_time(4,1)).to eq diary_entry_1
    end
  
    it "returns the longest entry that can be read in a given time 2" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Day One","This is my entry")
      diary_entry_2 = DiaryEntry.new("Day two","This is my second entry of the week")
      diary_entry_3 = DiaryEntry.new("Day three","this is my super duper long third entry for this incredible week")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      expect(diary.find_best_entry_for_reading_time(4,2)).to eq diary_entry_2
    end
  end
  
  
end