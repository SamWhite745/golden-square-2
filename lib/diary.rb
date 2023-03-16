class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.map { |entry| entry.count_words }.sum
  end

  def reading_time(wpm) 
    return @entries.map { |entry| entry.reading_time(wpm) }.sum
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    words_can_read = wpm * minutes
    @entries.select { |entry| 
      entry.count_words <= words_can_read}
    .sort { |entry|
      entry.count_words
    }.first
  end
end