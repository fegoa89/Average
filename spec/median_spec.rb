require 'spec_helper'

describe Average do

  let(:int_array) { [3,4,5] }

  let(:mixed_array) { [3, 4.0, 5, 2.0, 3, 1.0] }

  let(:mode_array) { [1,1,2,2,3,4] }

  describe '#median' do

    context 'with a array of integers' do
      it 'should calculate the correct median' do
        expect(median(int_array)).to eq(4)
      end
    end

    context 'with a mixed array of integers and floats' do
      it 'should calculate the correct median' do
        expect(median(mixed_array)).to eq(3)
      end
    end

    context 'with an empty array' do
      it 'should gives back a nil' do
        expect(median([])).to eq(nil)
      end
    end

  end
  
end