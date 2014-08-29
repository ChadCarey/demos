json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :name, :attack, :sp_attack, :defence, :sp_defence, :pokedex_id
  json.url pokemon_url(pokemon, format: :json)
end
