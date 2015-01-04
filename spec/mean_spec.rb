require 'spec_helper'

describe Average do

  let(:int_array) { [3,4,5] }

  let(:mixed_array) { [3, 4.0, 5, 2.0, 3, 1.0] }

  let(:mode_array) { [1,1,2,2,3,4] }

  describe '#mean' do

    context 'with a array of integers' do
      it 'should calculate the correct mean' do
        expect(mean(int_array)).to eq(4)
      end
    end

    context 'with a mixed array of integers and floats' do
      it 'should calculate the correct mean' do
        expect(mean(mixed_array)).to eq(3)
      end
    end

    context 'with a empty array' do
      it 'should give back a nil' do
        expect(mean([])).to eq(nil)
      end
    end

  end
end