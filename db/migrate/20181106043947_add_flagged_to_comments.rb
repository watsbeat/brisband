class AddFlaggedToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :flagged, :boolean
  end
end
