class RemoveMonthlyColumnFromApartments < ActiveRecord::Migration
  def change
  	remove_column :apartments, :monthly
  end
end
