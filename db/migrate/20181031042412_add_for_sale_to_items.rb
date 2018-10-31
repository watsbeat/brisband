class AddForSaleToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :for_sale, :boolean
  end
end
