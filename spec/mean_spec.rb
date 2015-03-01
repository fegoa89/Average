require 'spec_helper'

describe Average do

  let(:int_array)   { [3,4,5]                  }

  let(:mixed_array) { [3, 4.0, 5, 2.0, 3, 1.0] }

  describe '#get_mean' do

    context 'with a array of integers' do
      it 'should calculate the correct mean' do
        expect(get_mean(int_array)).to eq(4)
      end
    end

    context 'with a mixed array of integers and floats' do
      it 'should calculate the correct mean' do
        expect(get_mean(mixed_array)).to eq(3)
      end
    end

    context 'with a empty array' do
      it 'should give back a nil' do
        expect(get_mean([])).to eq(nil)
      end
    end

  end
end