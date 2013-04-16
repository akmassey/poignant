module Poignant
  module WordOperations
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
  end
end

