require 'test_helper'
require 'piece'

class TestPiece < Minitest::Test
	context 'a piece' do
		should 'be created upon correct initialization' do
			@position = Position.new(0,1)
			@piece = Piece.new('pawn', @position)
			refute_equal @piece, nil
		end
		
		should 'raise an error when an invalid piece type is given' do
			@position = Position.new(0,1)
			assert_raises(RuntimeError) { @piece = Piece.new('pan', @position) }
		end
		
		should 'have an accessible piece type after creation' do
			@position = Position.new(0,1)
			@piece = Piece.new('pawn', @position)
			assert_equal @piece.type, 'pawn'
		end
		
		should 'have an accessible position after creation' do
			@position = Position.new(0,1)
			@piece = Piece.new('pawn', @position)
			refute_equal @piece.position, nil
		end
	end
end