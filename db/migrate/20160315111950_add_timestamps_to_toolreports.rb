class AddTimestampsToToolreports < ActiveRecord::Migration
  def change
    add_column :toolreports, :created_at, :datetime
    add_column :toolreports, :updated_at, :datetime
  end
end
