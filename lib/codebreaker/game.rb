module Codebreaker
	class Game

		attr_reader :invalid_guess_message, :allowed_number_of_digits

		def initialize(output)
			@output = output
			@invalid_guess_message = "Invalid guess!"
			@allowed_number_of_digits = 4
		end

		def start(secret)
			@secret = secret
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end

		def guess(guess)
			marker = Codebreaker::Marker.new(@secret, guess)
			@output.puts(valid_guess?(guess) ? '+'*marker.exact_match_count + '-'*marker.number_match_count : invalid_guess_message)
		end

		private

		def valid_guess?(guess)
		  guess.length == allowed_number_of_digits && is_integer?(guess)
    end

    def is_integer?(guess)
		  !!(guess =~ /\A[-+]?[0-9]+\z/)
		end

	end
end
