class CreateStockchecksheets < ActiveRecord::Migration
  def change
    create_table :stockchecksheets do |t|
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
    end
  end
end
