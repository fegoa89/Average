require 'spec_helper'

describe Average do

  let(:int_array)   { [3,4,5]                  }

  describe '.get_mean' do
    context 'should give back the same result as' do
      it 'mean([X,X,X,X])' do
       expect(int_array.get_mean).to eq(mean(int_array))
      end
  	end
  end

  describe '.get_mode' do
    context 'should give back the same result as ' do
      it 'mode([X,X,X,X])' do
      	expect(int_array.get_mode).to eq(mode(int_array))
      end
  	end
  end

  describe '.get_median' do
    context 'should give back the same result as ' do
      it 'median([X,X,X,X])' do
       expect(int_array.get_median).to eq(median(int_array))
      end
  	end
  end

end