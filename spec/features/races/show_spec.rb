require "rails_helper"

RSpec.describe "races show page" do
  it "displays all races" do
    visit "/races/"
    expect(page).to have_content(@races)
  end

  it "'displays races by id'" do
    visit "/races/#{@race.id}"

    expect(page).to have_content(@race)
  end
end