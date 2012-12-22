class AddActiveToComment < ActiveRecord::Migration
  def change
    add_column :comments, :active, :boolean
    remove_column :comments, :integer
  end
end
