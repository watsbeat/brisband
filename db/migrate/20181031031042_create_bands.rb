class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :bio
      t.string :genre
      t.boolean :status

      t.timestamps
    end
  end
end
