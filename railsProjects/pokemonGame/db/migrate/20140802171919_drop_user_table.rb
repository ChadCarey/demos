class DropUserTable < ActiveRecord::Migration
  def change
  	drop_table :Users
  end
end
