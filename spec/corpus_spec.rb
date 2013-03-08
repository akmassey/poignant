require 'poignant'

module Poignant

  describe Corpus do 
    before(:each) do 
      @small = "This is a small sentence."
      @repeating = "This is a small sentence with repeated words.  Words are repeated in this small sentence."
      @punctuation = "This is a small sentence. It includes? Punctuation!"
    end

    it "should be initialized with a string" do 
      lambda {Corpus.new(@small)}.should_not raise_error
    end

    it "should be able to calculate a frequency distribution" do 
      corpus = Corpus.new(@repeating)
      corpus.frequency_distribution["repeated"].should eq 2
      corpus.frequency_distribution["small"].should eq 2
      corpus.frequency_distribution["this"].should eq 2
      corpus.frequency_distribution["are"].should eq 1
    end

    it "should be able to remove punctuation" do 
      Corpus.new(@punctuation).normalized.should eq "this is a small sentence it includes punctuation"
    end
  end
end 
