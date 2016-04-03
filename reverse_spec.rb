require 'rspec'
require 'rantly'
require 'rantly/rspec_extensions'
require 'rantly/shrinks'

describe 'Reverse Arrays' do

  it 'should reverse a simple array' do
    property_of {
      Rantly { array(range(0, 100)) { integer } }
    }.check { |i|
      expect(i).to all(reverse)
    }
  end

end

def reverse
  reverse!
end