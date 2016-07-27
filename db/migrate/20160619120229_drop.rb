class Drop < ActiveRecord::Migration
  def change
    drop_table :vendingmachines
  end
end
