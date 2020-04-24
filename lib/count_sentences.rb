require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if self.empty?
      0
    else
      self.split(/[.!?]/).count{|i| i.empty? == false}
    end
  end
end