require 'test_helper'

class BusinessSupport::SectorTest < ActiveSupport::TestCase
  setup do
    @sector = FactoryGirl.create(:business_support_sector, name: "Finance")
  end
  
  test "should validates presence of name" do
    refute BusinessSupport::Sector.new.valid?
  end
  
  test "should validate uniqueness of name" do
    another_scheme = BusinessSupport::Sector.new(name: "Finance")
    refute another_scheme.valid?, "should validate uniqueness of name."
  end
end
