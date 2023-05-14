require "rails_helper"

RSpec.describe "races show page" do
  before :each do
    @race1 = Race.create!(location: "Denver", terrain: "road_pavement_dry", weather: "sunny", length: 13, loop: false, overnight: false)
    @race2 = Race.create!(location: "Estes Park", terrain: "trail_pavement_dry", weather: "sunny", length: 6, loop: false, overnight: false)
    @race3 = Race.create!(location: "Nederland", terrain: "trail_dirt_muddy", weather: "rain", length: 13, loop: true, overnight: false)
  end

  it "displays all races" do
    visit "/races/"
    expect(page).to have_content(@races)
  end

  it "'displays races by id'" do
    visit "/races/#{@race1.id}"

    expect(page).to have_content(@race1.location)
    expect(page).to have_content(@race1.terrain)
    expect(page).to have_content(@race1.weather)
    expect(page).to have_content(@race1.length)
    expect(page).to have_content(@race1.loop?)
    expect(page).to have_content(@race1.overnight)
  end
end