require 'rails_helper'

RSpec.describe User, type: :model do
  
# Users can be created when given the correct parameters
  it "creates new users with correct fields" do
    user = User.create(email:"foo@gmail.com", name:"FooName", encrypted_password:"FooPassword")
    expect(user.name).to eq("FooName")
    expect(user.email).to eq("foo@gmail.com")
    expect(user.encrypted_password).to eq("FooPassword")
  end

end