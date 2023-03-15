class GrammarStats
  def initialize
    @total = 0
    @passed = 0
  end

  def check(text)
    @total += 1
    if !!(text =~ /^[A-Z].*[\?\!\.]$/)
      @passed +=1
      true
    else
      false
    end
  end

  def percentage_good
    ((@passed / @total.to_f) * 100).ceil
  end
end