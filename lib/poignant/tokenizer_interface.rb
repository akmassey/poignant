module Poignant
  module TokenizerInterface
    def tokenize(string) 
      raise NotImplementedError, "Implementing 'tokenize' is required for this class."
    end

    def span_tokenize(string) 
      raise NotImplementedError, "Implementing 'span_tokenize' is required for this class."
    end
  end
end
