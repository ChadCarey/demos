class CreateUserPokemons < ActiveRecord::Migration
  def change
    create_table :user_pokemons do |t|
      t.references :pokemon, index: true
      t.belongs_to :user, index: true
      t.integer :exp

      t.timestamps
    end
  end
end
