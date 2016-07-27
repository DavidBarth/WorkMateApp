class CreateFaultsheets < ActiveRecord::Migration
  def change
    create_table :faultsheets do |t|
      t.created_at :datetime
      t.updated_at :datetime
      t.text :text_field
      t.references :vendingmachine, index: true, foreign_key: true
    end
  end
end
