require 'test_helper'

class TingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  ## sanity check
  def test_ting
    t = Ting.new(:name => 'kale')
    assert t.save
	end
	
	def test_ting_name_valid
	  t = Ting.new(:name => ' ')
	  assert !t.save, "Saved with empty name attribute"
    t2 = Ting.new(:name => 'a'*51)
    assert !t2.save, "Saved with too-long name attribute"
    t3 = Ting.new(:name => '?')
    assert !t3.save, "Saved with special char(s) name attr"
  end
  
  def test_ting_name_unique
    t = Ting.new(:name => 'kale')
    t.save
    t2 = Ting.new(:name => 'kale')
    assert !t2.save, "Saved object with duplicate name attr"
  end
  
  def test_ting_qty_valid
    t = Ting.new(:name => 'pop tarts')
    t.qty = 0
    assert !t.save, "Saved with zero quantity"
    t.qty = ''
    assert !t.save, "Saved with empty string qty"
    t.qty = 1000001
    assert !t.save, "Saved with qty > 1 million and 1"
    t.qty = 1.5
    assert !t.save, "Saved decimal qty"
  end
	
end
