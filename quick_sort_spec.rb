require 'rspec'
require 'rantly'
require 'rantly/rspec_extensions'
require 'rantly/shrinks'

RSpec.describe 'Array' do
  it 'Array#quicker_sort works produces the same result as Array#sort' do
    property_of {
      Rantly { array(range(0, 100)) { integer }}
    }.check { |a|
      expect(a.quicker_sort).to eq(a.sort)
    }
  end
end