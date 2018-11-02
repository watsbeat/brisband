require 'rails_helper'

RSpec.describe Item, type: :model do
  
# Test that items can be created when give the correct parameters
  it "creates new items with correct fields" do
    item = Item.create(user_id:1, brand:"FooBrand", model:"FooModel", description:"FooDescription", price:100, for_sale:true)
    expect(item.user_id).to eq(1)
    expect(item.brand).to eq("FooBrand")
    expect(item.model).to eq("FooModel")
    expect(item.description).to eq("FooDescription")
    expect(item.price).to eq(100)
    expect(item.for_sale).to eq(true)
  end
end
      
# RSPEC COMMANDS
  #rspec spec/models/item_spec.rb --format documentation