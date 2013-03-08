require "poignant/frequency_distribution"
require "poignant/ngrams"

module Poignant
  class Corpus
    include Poignant::FrequencyDistribution
    include Poignant::NGrams

    attr_reader :raw

    def initialize(string)
      @raw = string
    end

    def tokens
      @raw.split
    end

    def unique_tokens
      tokens.uniq
    end

    def token_count
      tokens.count
    end

    def words
      normalized.split
    end

    def unique_words
      words.uniq
    end

    def word_count
      words.count
    end

    def normalized
      @raw.downcase.gsub(/[^a-z ]/, '')
    end

    def lexical_diversity
      word_count * 1.0 / unique_words.count
    end
  end
end
