class AddPayPeriodToApatments < ActiveRecord::Migration
  def change
  	add_column :apartments, :pay_period, :string
  end
end
