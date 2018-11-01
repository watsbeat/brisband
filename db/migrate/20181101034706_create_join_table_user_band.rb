class CreateJoinTableUserBand < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :bands do |t|
      # t.index [:user_id, :band_id]
      # t.index [:band_id, :user_id]
    end
  end
end
