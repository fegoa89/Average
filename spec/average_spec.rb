require 'spec_helper'

describe Average do

  let(:int_array) { [3,4,5] }

  let(:mixed_array) { [3, 4.0, 5, 2.0, 3, 1.0] }

  let(:mode_array) { [1,1,2,2,3,4] }

  let(:mode_mixed_array) { [1,1.0,2,2.0,3.0,4] }

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

  end

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

  describe '#mode' do

    context 'with a array of integers' do
      it 'should calculate the correct mode' do
        expect(mode(mode_array)).to eq([1, 2])
      end
    end

    context 'with a mixed array of integers and floats' do
      it 'should calculate the correct mode' do
        expect(mode(mode_mixed_array)).to eq([1, 2])
      end
    end

  end

  describe '#unique_mode' do

    context 'with a array of integers' do
      it 'should calculate the correct mode returning only one mode' do
        expect(unique_mode(mode_array)).to eq(1)
      end
    end

    context 'with a mixed array of integers and floats' do
      it 'should calculate the correct mode returning only one mode' do
        expect(unique_mode(mode_mixed_array)).to eq(1)
      end
    end

  end
end