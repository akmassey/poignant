module Poignant
  module FrequencyDistribution
    def frequency_distribution(tokens=false)
      fd = {}
      if tokens
        unique_tokens.each do |token|
          fd[token] = raw.scan(token).count
        end
      else
        unique_words.each do |word|
          fd[word] = normalized.scan(word).count
        end
      end
      fd
    end
  end
end
