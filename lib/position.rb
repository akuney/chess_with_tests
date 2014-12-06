class Position
	attr_accessor :x, :y
	
	VALID_RANGE = (0..7)
	
	def initialize(x,y)
		if VALID_RANGE.include?(x) && VALID_RANGE.include?(y)
			@x = x
			@y = y
		else
			raise 'x or y coordinate not in valid range: 0 to 7 inclusive'
		end
	end
	
end