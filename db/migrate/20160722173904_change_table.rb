class ChangeTable < ActiveRecord::Migration
  def change 
    change_table :stockchecksheets do |t|
    t.integer "item11"
    t.integer "item12"
    t.integer "item21"
    t.integer "item22"
    t.integer "item31"
    t.integer "item32"
    t.integer "item41"
    t.integer "item42"
    t.integer "item51"
    t.integer "item52"
    end  
  end
end
