module Poignant
  module NGrams
    def bigrams
      ngrams(2)
    end

    def trigrams
      ngrams(3)
    end

    def ngrams(num)
      ngrams = []
      for i in num-1..(words.length-1)
        ngrams << words[i-(num-1)..i]
      end
      ngrams
    end
  end
end
