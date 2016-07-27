class CreateFactory < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.text :address
    end
  end
end

