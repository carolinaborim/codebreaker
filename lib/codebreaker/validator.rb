module Codebreaker
  class Validator
    attr_reader :allowed_number_of_digits

    def initialize
      @allowed_number_of_digits = 4
    end

    def valid_guess?(guess)
      guess.length == allowed_number_of_digits && is_integer?(guess)
    end

    def is_integer?(guess)
      !!(guess =~ /\A[-+]?[0-9]+\z/)
    end

  end
end
