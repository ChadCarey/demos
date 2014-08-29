class UserPokemonsController < ApplicationController
  before_action :set_user_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /user_pokemons
  # GET /user_pokemons.json
  def index
    @user_pokemons = UserPokemon.all
  end

  # GET /user_pokemons/1
  # GET /user_pokemons/1.json
  def show
  end

  # GET /user_pokemons/new
  def new
    @user_pokemon = UserPokemon.new
  end

  # GET /user_pokemons/1/edit
  def edit
  end

  # POST /user_pokemons
  # POST /user_pokemons.json
  def create
    @user_pokemon = UserPokemon.new(user_pokemon_params)

    respond_to do |format|
      if @user_pokemon.save
        format.html { redirect_to @user_pokemon, notice: 'User pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @user_pokemon }
      else
        format.html { render :new }
        format.json { render json: @user_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_pokemons/1
  # PATCH/PUT /user_pokemons/1.json
  def update
    respond_to do |format|
      if @user_pokemon.update(user_pokemon_params)
        format.html { redirect_to @user_pokemon, notice: 'User pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_pokemon }
      else
        format.html { render :edit }
        format.json { render json: @user_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_pokemons/1
  # DELETE /user_pokemons/1.json
  def destroy
    @user_pokemon.destroy
    respond_to do |format|
      format.html { redirect_to user_pokemons_url, notice: 'User pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_pokemon
      @user_pokemon = UserPokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_pokemon_params
      params.require(:user_pokemon).permit(:pokemon_id, :user_id, :exp)
    end
end
