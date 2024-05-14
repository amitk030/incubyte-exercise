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

  context 'when argument is present' do
    context 'when delimiter is comma' do
      let(:arg) {"1,2, 3, 4"}

      it 'returns their sum' do
        expect(calculator.add(arg)).to eq(10)
      end
    end

    context 'when \n is present along with delimiter' do
      context 'when \n is present in the middle' do
        let(:arg) {"1\n2,3"}
        
        it 'returns their sum' do
          expect(calculator.add(arg)).to eq(6)
        end
      end

      context 'when \n is present in the end of the string' do
        let(:arg) {"1,\n"}

        it 'returns invalid argument' do
          expect{ calculator.add(arg) }.to raise_error(RuntimeError,"invalid argument")
        end
      end
    end
  end
end
