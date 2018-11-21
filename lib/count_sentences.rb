require 'pry'

class String

  def sentence?
    if self.end_with?("\.")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("\?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("\!")
      true
    else
      false
    end
  end

  def count_sentences
    array = self.split(/\.?\s+/)
    array.delete_if {|element| element.empty?}
    return array.length
  end
end