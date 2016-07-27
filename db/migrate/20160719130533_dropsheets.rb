class Dropsheets < ActiveRecord::Migration
  def change
    drop_table :stockchecksheets
  end
end
