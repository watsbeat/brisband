class AddFlaggedToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :flagged, :boolean
  end
end
