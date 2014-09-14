require 'test_helper'

class UserPokemonsControllerTest < ActionController::TestCase
  setup do
    @user_pokemon = user_pokemons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_pokemons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_pokemon" do
    assert_difference('UserPokemon.count') do
      post :create, user_pokemon: { exp: @user_pokemon.exp, pokemon_id: @user_pokemon.pokemon_id, user_id: @user_pokemon.user_id }
    end

    assert_redirected_to user_pokemon_path(assigns(:user_pokemon))
  end

  test "should show user_pokemon" do
    get :show, id: @user_pokemon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_pokemon
    assert_response :success
  end

  test "should update user_pokemon" do
    patch :update, id: @user_pokemon, user_pokemon: { exp: @user_pokemon.exp, pokemon_id: @user_pokemon.pokemon_id, user_id: @user_pokemon.user_id }
    assert_redirected_to user_pokemon_path(assigns(:user_pokemon))
  end

  test "should destroy user_pokemon" do
    assert_difference('UserPokemon.count', -1) do
      delete :destroy, id: @user_pokemon
    end

    assert_redirected_to user_pokemons_path
  end
end
