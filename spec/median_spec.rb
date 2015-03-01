require 'spec_helper'

describe Average do

  let(:int_array)          { [3, 4, 5]                }

  let(:array)              { [1, 1, 2, 2, 3, 4]       }

  let(:mixed_array)        { [3, 4.0, 5, 2.0, 3, 1.0] }

  let(:array_to_average)   { [3, 4, 7, 8, 10, 12]     }

  let(:mode_array_not_pair) { [1, 1, 2, 2, 3, 4, 5]   }

  describe '#get_median' do

    context 'with a array of integers' do
      it 'should calculate the correct median' do
        expect(get_median(int_array)).to eq(4)
      end
    end

    context 'with a mixed array of integers and floats' do
      it 'should calculate the correct median' do
        expect(get_median(mixed_array)).to eq(3)
      end
    end

    context 'with an empty array' do
      it 'should gives back a nil' do
        expect(get_median([])).to eq(nil)
      end
    end

  end

  describe '#calculate_median' do
    context 'with an even array' do
      it 'should give back the middle value' do
        expect(calculate_median(array)).to eq(2.0)
      end
    end

    context 'with a _not_ even array' do
      it 'should give back the the element on the middle' do
        expect(calculate_median(mode_array_not_pair)).to eq(2)
      end
    end
  end

  describe '#middle_item' do
    context 'with a sorted array like [1,1,2,2,3,4]' do
      it 'should give back the middle value' do
        expect(middle_item(array)).to eq(3)
      end
    end
  end

  describe '#middle_items_to_average' do
    context 'with an even array' do
      it 'should give back two middle items' do
        expect(middle_items_to_average(array_to_average)).to eq([7, 8])
      end
    end
  end
  
end