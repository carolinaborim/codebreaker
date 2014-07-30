require 'spec_helper'

module Codebreaker
	describe Game do

		let(:output) {double('output').as_null_object}
		let(:game) {Game.new(output)}

		describe "#start" do

			it "sends a welcome message" do
				expect(output).to receive(:puts).with('Welcome to Codebreaker!')
				game.start('1234')
			end

			it "prompts for the first guess" do
				expect(output).to receive(:puts).with('Enter guess:')
				game.start('1234')
			end
		end

		describe "#guess" do
			it "sends the mark to the output ''" do
				game.start('1234')
				expect(output).to receive(:puts).with('++++')
				game.guess('1234')
			end

			context "when it receives an invalid guess" do
				it "sends 'Invalid guess!' to the output" do
					game.start('1234')
					expect(output).to receive(:puts).with('Invalid guess!')
					game.guess('55555')
				end
			end
		end
	end
end
