require 'spec_helper'

module Codebreaker
  describe Validator do
    let(:output) {double('output').as_null_object}
    let(:game) {Game.new(output)}

    describe "#valid_guess?" do

      context "when it receives more than 4 digits" do
        it "sends the 'Invalid guess!' message" do
          game.start('1234')
          expect(output).to receive(:puts).with('Invalid guess!')
          game.guess('11111')
        end
      end

      context "when it receives non digits characters" do
        it "sends the 'Invalid guess!' message" do
          game.start('1234')
          expect(output).to receive(:puts).with('Invalid guess!')
          game.guess('asd')
         end
      end
    end
  end
end
