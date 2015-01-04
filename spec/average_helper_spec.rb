require 'spec_helper'

describe Average do

  let(:valid_array)   { [3,'4.0', 5, '2', 0.3]         }

  let(:invalid_array) { [3,'4.0w', 5, 'whatever', 0.3] }

  describe '#valid_array?' do
    context 'with a mixed array of valid elements' do
      it 'should return true' do
        expect(valid_array?(valid_array)).to be(true)
      end
    end

    context 'with a mixed array of invalid elements' do
      it 'should return true' do
        expect(valid_array?(invalid_array)).to be(false)
      end
    end

    context 'with a element that does not have an Array class' do
      it 'should return false' do
        expect(valid_array?('1, 3, 0.1')).to be(false)
      end
    end

    context 'with a nil value' do
      it 'should return false' do
        expect(valid_array?(nil)).to be(false)
      end
    end

    context 'with a empty array' do
      it 'should return false' do
        expect(valid_array?([])).to be(false)
      end
    end

  end

  describe '#array_contain_digits?' do
    context 'with a mixed array of valid elements' do
      it 'should return true' do
        expect(array_contain_digits?(valid_array)).to be(true)
      end
    end

    context 'with a mixed array of invalid elements' do
      it 'should return false' do
        expect(array_contain_digits?(invalid_array)).to be(false)
      end
    end

  end

  describe '#value_can_be_handled?' do
    context 'when the element is a Integer' do
      it 'should return true' do
        expect(value_can_be_handled?(2)).to be(true)
      end
    end

    context 'when the element is a Float' do
      it 'should return true' do
        expect(value_can_be_handled?(2.0)).to be(true)
      end
    end

    context 'when the element is something unknown' do
      it 'should return false' do
        expect(value_can_be_handled?('whatever')).to be(false)
      end
    end

  end

  describe '#looks_like_a_digit?' do
    context 'when the element is a string that looks like a Float' do
      it 'should return true' do
        expect(looks_like_a_digit?('9.0')).to be(true)
      end
    end

    context 'when the element is a string that looks like a Integer' do
      it 'should return true' do
        expect(looks_like_a_digit?('9')).to be(true)
      end
    end

    context 'when the element is something unknown' do
      it 'should return false' do
        expect(looks_like_a_digit?('whatever')).to be(false)
      end
    end

  end

  describe '#clean_array' do
    context 'with an array that contains valid that could be converted to a digit' do
      it 'should return an array without string and with the correct numeric format' do
        expect(clean_array(valid_array)).to eq([3, 4.0, 5, 2, 0.3])
      end
    end
  end

end