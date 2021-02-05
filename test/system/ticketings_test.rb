require "application_system_test_case"

class TicketingsTest < ApplicationSystemTestCase
  setup do
    @ticketing = ticketings(:one)
  end

  test "visiting the index" do
    visit ticketings_url
    assert_selector "h1", text: "Ticketings"
  end

  test "creating a Ticketing" do
    visit ticketings_url
    click_on "New Ticketing"

    fill_in "Class", with: @ticketing.Class
    fill_in "Date", with: @ticketing.Date
    fill_in "Price", with: @ticketing.Price
    fill_in "To", with: @ticketing.To
    fill_in "Trains", with: @ticketing.Trains
    fill_in "From", with: @ticketing.from
    fill_in "System", with: @ticketing.system
    click_on "Create Ticketing"

    assert_text "Ticketing was successfully created"
    click_on "Back"
  end

  test "updating a Ticketing" do
    visit ticketings_url
    click_on "Edit", match: :first

    fill_in "Class", with: @ticketing.Class
    fill_in "Date", with: @ticketing.Date
    fill_in "Price", with: @ticketing.Price
    fill_in "To", with: @ticketing.To
    fill_in "Trains", with: @ticketing.Trains
    fill_in "From", with: @ticketing.from
    fill_in "System", with: @ticketing.system
    click_on "Update Ticketing"

    assert_text "Ticketing was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticketing" do
    visit ticketings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticketing was successfully destroyed"
  end
end
