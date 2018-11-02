require 'rails_helper'

RSpec.describe Band, type: :model do
  
# Bands can be created when given the correct parameters
  it "creates new bands with correct fields" do
    band = Band.create(name:"FooName", bio:"FooBio", genre:"FooGenre", status:true)
    expect(band.name).to eq("FooName")
    expect(band.bio).to eq("FooBio")
    expect(band.genre).to eq("FooGenre")
    expect(band.status).to eq(true)
  end

end