require 'rspec'
require 'rantly'
require 'rantly/rspec_extensions'
require 'rantly/shrinks'

RSpec.describe "Array" do
  it "uniq is idempotent" do
    property_of {
      Rantly { array { Rantly { i = integer; guard i >= 0; i } } }
    }.check { |a|
      expect(a.uniq.uniq).to eq(a.uniq)
    }
  end
end