require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'


class BoatRenterTest < Minitest::Test
  #Iteration 1
  def test_it_exists
    kayak = Boat.new(:kayak, 20)
    assert_instance_of Boat, kayak
  end

  def test_it_has_attributes
    kayak = Boat.new(:kayak, 20)
    assert_equal :kayak, kayak.type
    assert_equal 20, kayak.price_per_hour
  end

  def test_it_can_be_rented
    kayak = Boat.new(:kayak, 20)
    assert_equal 0, kayak.hours_rented
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour

    assert_equal 3,   kayak.hours_rented
  end

  def test_renter_exists
    renter = Renter.new("Patrick Star", "4242424242424242")
    assert_instance_of Renter, renter
  end

  def test_renter_has_attributes
    renter = Renter.new("Patrick Star", "4242424242424242")
    assert_equal "Patrick Star", renter.name
    assert_equal "4242424242424242", renter.credit_card_number

  end
end
