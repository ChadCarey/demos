

class MoveBuilder < PokeAPI
	public
	def self.buildMove(move_id)
		data = get('move/1/' + String(move_id) + '/')
	end
end

puts MoveBuilder.buildMove(1)