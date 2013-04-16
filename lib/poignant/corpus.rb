require "poignant/frequency_distribution"
require "poignant/ngrams"
require "poignant/word_operations"
require "poignant/token_operations"

module Poignant
  class Corpus
    include Poignant::FrequencyDistribution
    include Poignant::NGrams
    include Poignant::WordOperations
    include Poignant::TokenOperations

    attr_reader :collection
    # this is kind of a hack; we want to remove this eventually
    attr_reader :raw

    def initialize(document_array)
      @collection = document_array
      prepare_raw
    end

    def add(document)
      @collection << document
      prepare_raw
    end

    def prepare_raw
      @raw = ""
      @collection.each do |c| 
        @raw += c.raw
      end
    end

  end
end
