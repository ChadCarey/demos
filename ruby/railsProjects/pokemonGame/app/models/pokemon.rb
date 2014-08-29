class Pokemon < ActiveRecord::Base
	validates :name, :attack, :sp_attack, :defence, :sp_defence, :pokedex_id, presence: true
	validates :attack, :sp_attack, :defence, :sp_defence, :pokedex_id, numericality: {greater_than_or_equal_to: 1}
	validates :name, :pokedex_id, uniqueness: true

	def self.getPokemon(pokedex_id)
		pokemon = find_pokemon_by_pokedex_id(pokedex_id)
		if pokemon.present?
			return pokemon
		else
			return nil
		end
	end

end