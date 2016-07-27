class DropFactorieTable < ActiveRecord::Migration
  def change
    drop_table :factories
  end
end
