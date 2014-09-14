class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :bedrooms
      t.integer :bathrooms
      t.decimal :cost
      t.boolean :monthly

      t.timestamps
    end
  end
end
