require 'spec_helper'

module Codebreaker
  describe Validator do
    let(:validator) {Codebreaker::Validator.new}

    describe "#valid_guess?" do
      context "when it receives less than 4 digits" do
        it "returns false" do
          expect(validator.valid_guess?('555')).to eq(false)
        end
      end

      context "when it receives more than 4 digits" do
        it "returns false" do
          expect(validator.valid_guess?('55555')).to eq(false)
        end
      end

      context "when it receives non digits characters" do
        it "returns false" do
          expect(validator.valid_guess?('asd')).to eq(false)
         end
      end

      context "when it receives 4 digits" do
        it "returns true" do
          expect(validator.valid_guess?('1234')).to eq(true)
        end
      end
    end
  end
end
