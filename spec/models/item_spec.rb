require 'rails_helper'

# TEST THE ITEM MODEL
RSpec.describe Item, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "creates new items with correct fields" do
    Item.create
  end
end

# rspec spec/models/item_spec.rb --format documentation
# it "does something we expect" do => to describe/define test