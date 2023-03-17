class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @left_to_read = contents.split(" ")
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
    words_can_read = wpm * minutes

    if @left_to_read.count > words_can_read # More words than time to read
      words_read = @left_to_read.first(words_can_read).join(" ")
      @left_to_read = @left_to_read.drop(words_can_read)
      return words_read
    else # Enough time to read all words
      words_read = @left_to_read.join(" ")
      @left_to_read = @contents.split(" ")
      return words_read
    end

  end



end