class CreateFaultsheets < ActiveRecord::Migration
  def change
    create_table :faultsheets do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.text :fault
      t.references :vendingmachine, index: true, foreign_key: true
    end
  end
end
