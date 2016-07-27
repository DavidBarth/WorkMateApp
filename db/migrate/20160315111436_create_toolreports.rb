class CreateToolreports < ActiveRecord::Migration
  def change
    create_table :toolreports do |t|
      t.string :toolname
      t.text :toolfault
      t.string :toollocation
    end
  end
end
