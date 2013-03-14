require 'poignant'

module Poignant

  describe SimpleTokenizer do 

    it "should be able to tokenize based on spaces" do 
      text = "This is a sentence."
      result = ["This", "is", "a", "sentence."]
      SimpleTokenizer.tokenize(text).should eq result
    end

  end

end
