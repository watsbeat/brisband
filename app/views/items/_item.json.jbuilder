json.extract! item, :id, :brand, :model, :description, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
