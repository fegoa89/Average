require 'spec_helper'

describe Average do

  let(:int_array)   { [3,4,5]                  }

  let(:mode_array)  { [1,1,2,2,3,4]            }

  let(:mixed_array) { [3, 4.0, 5, 2.0, 3, 1.0] }
  let(:array_with_two_modes) { [1, 2, 2, 2, 3, 3, 7, 7, 7, 9] }
  let(:array_with_one_mode)  { [2, 4, 6, 14, 21, 24, 229, 24, 24, 39] }

  describe '#get_mode' do

    context 'with a array of integers' do
      it 'should calculate the correct mode' do
        expect(get_mode(mode_array)).to eq([1, 2])
      end
    end

    context 'with a empty array' do
      it 'should return nil' do
        expect(get_mode([])).to eq(nil)
      end
    end

    context 'with a nil object' do
      it 'should return a nil' do
        expect(get_mode([])).to eq(nil)
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
        expect(unique_mode([])).to eq(nil)
      end
    end

    context 'with a nil object' do
      it 'should return nil' do
        expect(unique_mode(nil)).to eq(nil)
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

    context 'with a empty array' do
      it 'should return nil' do
        expect(repetition_hash([])).to eql(nil)
      end
    end

    context 'with a nil object' do
      it 'should return nil' do
        expect(repetition_hash(nil)).to eql(nil)
      end
    end

  end

  describe 'testing returned values' do

    context 'with an array that has two modes' do
      it 'should return an array with two values' do
        expect(get_mode(array_with_two_modes)).to eq([2, 7])
      end
    end

    context 'with an array that has one modes' do
      it 'should return an array with two values' do
        expect(get_mode(array_with_one_mode)).to eq(24)
      end
    end
  end

end
