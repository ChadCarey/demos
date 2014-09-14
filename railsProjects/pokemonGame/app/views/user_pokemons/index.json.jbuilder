json.array!(@user_pokemons) do |user_pokemon|
  json.extract! user_pokemon, :id, :pokemon_id, :user_id, :exp
  json.url user_pokemon_url(user_pokemon, format: :json)
end
