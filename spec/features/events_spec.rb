require 'rails_helper'
require 'rails_helper'

feature "Events" do

  scenario "User delete an event" do
    Event.create!(description: "event")
    visit root_path
    expect(page).to have_content("event")
    click_on "delete"
    expect(page).to have_no_content("events")
    expect(page).to have_no_content("events")
    end
    # scenario "User create and event" do
    #   visit root_path
    #   expect(page).to have_content("New Event")
    #   click_on "New Event"
    #   fill_in "Description", with: "WEDDING"
    #   fill_in "Location", with: "BOULDER"
    #   fill_in "Capacity", with: "1000"
    #   fill_in "Date", with: "10/29/2015"
    #   check "Requires ID"
    #   click_on "Create Event"
    #   expect(page).to have_content("WEDDING")
    # end
    # scenario "User can delete the event"



end
