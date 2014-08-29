class UserPokemon < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :user
end
