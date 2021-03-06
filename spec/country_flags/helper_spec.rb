require 'spec_helper'

describe CountryFlags::Helper do

  include CountryFlags::Helper

  describe '#country_flag_path' do
    it 'throws exception if wrong format given' do
      expect { country_flag_path('bg', :tiff) }.to raise_error(ArgumentError)
    end

    it 'does not throw exception if format given in string' do
      expect { country_flag_path('bg', 'gif') }.to raise_error(ArgumentError)
    end

    it 'returns image path' do
      expect(country_flag_path('bg', :png)).to be_a(String)
    end

    it 'returns empty string if no country path given' do
      expect(country_flag_path(nil)).to eq('') 
      expect(country_flag_path('')).to eq('') 
    end
  end

  describe '#country_flag' do
    it 'returns image tag' do
      expect(country_flag('bg')).to be_a(String)
    end

    it 'throws exception if wrong format given' do
      expect { country_flag('bg', format: :tiff) }.to raise_error(ArgumentError)
    end

    it 'returns empty string if no coutry given' do
      expect(country_flag(nil)).to eq('') 
      expect(country_flag('')).to eq('') 
    end
  end
end
