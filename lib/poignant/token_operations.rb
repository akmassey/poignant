module Poignant
  module TokenOperations
    def tokens
      @raw.split
    end

    def unique_tokens
      tokens.uniq
    end

    def token_count
      tokens.count
    end
  end
end


