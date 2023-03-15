class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @left_to_read = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").count
  end

  def reading_time(wpm)
    fail "reading speed needs to be above 0" if wpm <= 0
    return (count_words / wpm.to_f ).ceil
  end

  def reading_chunk(wpm, minutes)
    fail "reading speed needs to be above 0" if wpm <= 0
    words_can_read = wpm * minutes #4

    if count_remaining_words > words_can_read 
      words_read = @left_to_read.split(" ").first(words_can_read).join(" ") # one two three four
      @left_to_read = @left_to_read.split(" ").drop(words_can_read).join(" ")
      return words_read
    else
      words_read = @left_to_read
      @left_to_read = @contents
      return words_read
    end
  end

  private

  def count_remaining_words
    return @left_to_read.split(" ").count
  end
end