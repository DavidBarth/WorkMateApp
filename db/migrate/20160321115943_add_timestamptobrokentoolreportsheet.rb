class AddTimestamptobrokentoolreportsheet < ActiveRecord::Migration
  def change
    add_column :brokentoolreportsheets, :toolname, :string
    add_column :brokentoolreportsheets, :toolfault, :text
    add_column :brokentoolreportsheets, :toollocation, :string
    add_column :brokentoolreportsheets, :created_at, :datetime
    add_column :brokentoolreportsheets, :updated_at, :datetime
  end
end
