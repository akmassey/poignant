module Poignant
  module FrequencyDistribution
    def frequency_distribution
      fd = {}
      unique_words.each do |word|
        fd[word] = normalized.scan(word).count
      end
      fd
    end
  end
end
