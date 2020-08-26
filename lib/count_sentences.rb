require 'pry'

class String

  def sentence?
    #if self[self.size-1] == "."
      #return true 
    #end
    #return false
    #more effecient below 
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    arr = self.split(/[.?!]/)
    #["This, well, is a sentence", " This is too", "", " And so is this, I think", " Woo"]
    arr.delete_if{|sentence| sentence.empty?}
    #above deletes the empty strings
    arr.length
    #taks in length which is ultimatley the amount of sentences
  end
end