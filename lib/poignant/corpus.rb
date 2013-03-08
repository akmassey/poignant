module Poignant
  class Corpus
    attr_reader :raw
    def initialize(string)
      @raw = string
    end
  end
end
