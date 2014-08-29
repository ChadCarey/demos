class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :attack
      t.integer :sp_attack
      t.integer :defence
      t.integer :sp_defence

      t.timestamps
    end
  end
end
