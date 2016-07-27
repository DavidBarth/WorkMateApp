class DropTable < ActiveRecord::Migration
  def change
    drop_table :toolreports
  end
end
