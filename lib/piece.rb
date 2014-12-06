class Piece
	attr_accessor :type, :position
	
	PIECES = ['king', 'queen', 'rook', 'bishop', 'knight', 'pawn']
	
	def initialize(type, position)
		if PIECES.include?(type)
			@type = type
			@position = position
		else
			raise 'piece type is not valid.'
		end
	end
end