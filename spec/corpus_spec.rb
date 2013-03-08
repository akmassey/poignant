require 'poignant'

describe Poignant::Corpus do 
  it "should be initialized with a string" do 
    lambda {Poignant::Corpus.new("This is a string")}.should_not raise_error
  end
end
