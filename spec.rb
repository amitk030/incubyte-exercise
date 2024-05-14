require_relative './code.rb'
require 'rspec'

RSpec.describe StringOperation do
  let(:calculator) { StringOperation.new}

  context 'when argument is empty string' do
    let(:arg) {""}

    it 'returns 0' do
      expect(calculator.add(arg)).to eq(0)
    end
  end
end
