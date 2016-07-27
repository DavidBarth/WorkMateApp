class DropTable1 < ActiveRecord::Migration
  def change
    drop_table :vendingmachines, :factories
  end
end
