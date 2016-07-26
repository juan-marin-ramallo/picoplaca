require_relative "picoplaca"
require "test/unit"


class TestUnitPicoPlaca < Test::Unit::TestCase
  def test_can_be_road_by_plate
		eval = PicoPlaca.new("PBO-0063", "2016-07-28", "19:00").validatePlate()
		assert_equal( 'The car with plate PBO-0063 can be on the road without problem because today is Thursday and the last digit for its plate is 3', eval)
  end	
	
	def test_can_be_road_by_time
		eval = PicoPlaca.new("PBO-0063", "2016-07-28", "20:00").validatePlate()
		assert_equal( 'The car with plate PBO-0063 can be on the road without problem because the time is 20:00', eval)
  end
	
	def test_cannot_be_road
		eval = PicoPlaca.new("PBO-0063", "2016-07-26", "19:00").validatePlate()
		assert_equal( 'The car with plate PBO-0063 can not be on the road because today is Tuesday, the last digit for its plate is 3 and the time is 19:00', eval)
  end
end