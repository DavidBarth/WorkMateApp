class CreateVendingmachines < ActiveRecord::Migration
  def change
    create_table :vendingmachines do |t|
      t.string :title
      t.string :configuration
       
      t.datetime :created_at
      t.datetime :updated_at
      
     t.references :factory, index: true, foreign_key: true
     
      
    end
  end
end