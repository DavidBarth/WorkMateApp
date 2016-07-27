class CreateSheets < ActiveRecord::Migration
  def change
    create_table :stockchecksheets do |t|
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
      
      t.references :vendingmachine, index: true, foreign_key: true
    end
  end
end