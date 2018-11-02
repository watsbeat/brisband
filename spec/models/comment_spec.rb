require 'rails_helper'

RSpec.describe Comment, type: :model do
  
# Comments can be created when given the correct parameters
  it "creates new comments with correct fields" do
    comment = Comment.create(description:"FooDescription")
    expect(comment.description).to eq("FooDescription")
  end

end