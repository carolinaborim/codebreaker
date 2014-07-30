module Codebreaker
	class Game

		attr_reader :invalid_guess_message

		def initialize(output)
			@output = output
			@invalid_guess_message = "Invalid guess!"
		end

		def start(secret)
			@secret = secret
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end

		def guess(guess)
			marker = Codebreaker::Marker.new(@secret, guess)
			@output.puts(validator.valid_guess?(guess) ? '+'*marker.exact_match_count + '-'*marker.number_match_count : invalid_guess_message)
		end

		private

		def validator
			Codebreaker::Validator.new
		end

	end
end
