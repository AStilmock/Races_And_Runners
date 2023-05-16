require 'rails_helper'

RSpec.describe 'Races Index' do
  before :each do
    @race1 = Race.create!(location: "Denver", terrain: "trail_gravel_dry", weather: "cloudy", length: 26, loop: true, overnight: true)
    @race2 = Race.create!(location: "Estes Park", terrain: "trail_pavement_dry", weather: "sunny", length: 6, loop: false, overnight: false)
    @race3 = Race.create!(location: "Nederland", terrain: "trail_dirt_muddy", weather: "rain", length: 13, loop: true, overnight: false)
    @race4 = Race.create!(location: "Lyons", terrain: "trail_snow", weather: "snowy", length: 6, loop: true, overnight: false)
    @runner1 = @race1.runners.create!(name: "Tim", shoes: "Nike", spikes: false, team: false, races_completed: 10)
    @runner2 = @race1.runners.create!(name: "Mitchell", shoes: "Mizuno", spikes: false, team: false, races_completed: 9)
    @runner3 = @race2.runners.create!(name: "Andy", shoes: "Brooks", spikes: false, team: true, races_completed: 150)
    @runner4 = @race2.runners.create!(name: "Tom", shoes: "Altra", spikes: false, team: true, races_completed: 3)
    @runner5 = @race3.runners.create!(name: "Alex", shoes: "Nike", spikes: true, team: false, races_completed: 0)
    @runner6 = @race3.runners.create!(name: "Ryan", shoes: "Adidas", spikes: false, team: false, races_completed:55)
  end

  it "shows all race locations" do
    visit "/races"
    
    expect(page).to have_content(@race1.location)
    expect(page).to have_content(@race2.location)
  end

  it "has records listed by created_at" do
    visit "/races"

    expect(@race4.location).to appear_before(@race3.location)
    expect(@race2.location).to appear_before(@race1.location)
    expect(page).to have_content(@race4.created_at)
    expect(page).to have_content(@race2.created_at)
  end

  it "has link to index pages" do
    visit "/races"

    expect(page).to have_link("Runners Page")
    expect(page).to have_link("Races Page")
  end
end
