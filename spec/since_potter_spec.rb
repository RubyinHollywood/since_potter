require 'minitest/autorun'
require 'minitest/pride'
require 'since_potter'

describe SincePotter do
  before do
    @since_potter = SincePotter.new
  end

  describe "the truth" do
    it "is true" do
      true.must_equal true
    end
  end
end

