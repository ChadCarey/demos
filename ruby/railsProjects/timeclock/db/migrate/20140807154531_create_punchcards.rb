class CreatePunchcards < ActiveRecord::Migration
  def change
    create_table :punchcards do |t|
      t.decimal :timein
      t.decimal :timeout
      t.integer :user_id

      t.timestamps
    end
  end
end
