require 'test_helper'
require 'position'

class TestPosition < Minitest::Test
	context 'a position' do
		#initialization
		
		should 'be created upon correct initialization' do
			@position = Position.new(3, 2)
			refute_equal @position, nil
		end
		
		should 'raise an error when a coordinate is too small' do
			assert_raises(RuntimeError) { @position = Position.new(-1, 2) }
		end
		
		should 'raise an error when a coordinate is too large' do
			assert_raises(RuntimeError) { @position = Position.new(2, 8) }
		end
		
		#coordinates
		
		should 'have an accessible first coordinate x' do
			@position = Position.new(0, 5)
			assert_equal @position.x, 0
		end
		
		should 'set x to only the right value' do
			@position = Position.new(0, 5)
			refute_equal @position.x, 5
		end
		
		should 'have an accessible second coordinate y' do
			@position = Position.new(0, 5)
			assert_equal @position.y, 5
		end
		
	end
	
	
	
end