require "rails_helper"

RSpec.describe "races new page" do
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

  it "edit races" do
    visit "/races/#{@race1.id}/edit"

    fill_in "race[terrain]", with: "trail_dirt_dry"
    fill_in "race[weather]", with: "cloudy"
    fill_in "race[length]", with: 1
    fill_in "race[loop]", with: false
    fill_in "race[overnight]", with: false

    click_button

    expect(current_path).to eq("/races/#{@race1.id}")
    expect(page).to have_content("trail_dirt_dry")
  end
end