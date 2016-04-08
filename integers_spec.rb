require 'rspec'
require 'rantly'
require 'rantly/rspec_extensions'
require 'rantly/shrinks'

describe 'Integers' do

  it 'integer property only returns Integer type' do
    property_of {
      integer # the generator
    }.check { |i| # i is the generated value
      expect(i).to be_a(Integer) # the expectation
    }
  end

end