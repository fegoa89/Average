require 'spec_helper'

describe Average do

  let(:int_array)   { [3,4,5]                  }

  describe '.mean' do
    context 'should give back the same result as' do
      it 'get_mean([X,X,X,X])' do
       expect(int_array.mean).to eq(get_mean(int_array))
      end
    end
  end

  describe '.mode' do
    context 'should give back the same result as ' do
      it 'get_mode([X,X,X,X])' do
        expect(int_array.mode).to eq(get_mode(int_array))
      end
    end
  end

  describe '.median' do
    context 'should give back the same result as ' do
      it 'get_median([X,X,X,X])' do
       expect(int_array.median).to eq(get_median(int_array))
      end
    end
  end

end