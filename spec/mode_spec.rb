require 'spec_helper'

describe Average do

  let(:int_array) { [3,4,5] }

  let(:mixed_array) { [3, 4.0, 5, 2.0, 3, 1.0] }

  let(:mode_array) { [1,1,2,2,3,4] }


  describe '#mode' do

    context 'with a array of integers' do
      it 'should calculate the correct mode' do
        expect(mode(mode_array)).to eq([1, 2])
      end
    end

    context 'with a empty array' do
      it 'should return nil' do
        expect(mode([])).to eq([])
      end
    end

  end

  describe '#unique_mode' do

    context 'with a array of integers' do
      it 'should calculate the correct mode returning only one mode' do
        expect(unique_mode(mode_array)).to eq(1)
      end
    end

    context 'with a empty array' do
      it 'should return nil' do
        expect(unique_mode([])).to eq([])
      end
    end

  end

  describe '#repetition_hash' do
    context 'should return a hash' do
      subject { repetition_hash(mode_array) }
      it 'with hash_result key' do
        expect(subject).to include :hash_result
      end

      it 'with hash_result key' do
        expect(subject[:hash_result]).to eql( { 1 => 2, 2 => 2, 3 => 1, 4 => 1 } )
      end

      it 'with max_repetition key' do
        expect(subject).to include :max_repetition
      end
    end
  end

end