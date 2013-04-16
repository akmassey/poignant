require "poignant/word_operations"
require "poignant/frequency_distribution"
require "poignant/token_operations"

module Poignant
  class Document
    include Poignant::WordOperations
    include Poignant::FrequencyDistribution
    include Poignant::TokenOperations

    attr_reader :raw

    def initialize(string)
      @raw = string
    end
  end
end

