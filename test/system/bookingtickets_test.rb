require "application_system_test_case"

class BookingticketsTest < ApplicationSystemTestCase
  setup do
    @bookingticket = bookingtickets(:one)
  end

  test "visiting the index" do
    visit bookingtickets_url
    assert_selector "h1", text: "Bookingtickets"
  end

  test "creating a Bookingticket" do
    visit bookingtickets_url
    click_on "New Bookingticket"

    fill_in "Date", with: @bookingticket.Date
    fill_in "Price", with: @bookingticket.Price
    fill_in "Event name", with: @bookingticket.event_name
    fill_in "Location", with: @bookingticket.location
    click_on "Create Bookingticket"

    assert_text "Bookingticket was successfully created"
    click_on "Back"
  end

  test "updating a Bookingticket" do
    visit bookingtickets_url
    click_on "Edit", match: :first

    fill_in "Date", with: @bookingticket.Date
    fill_in "Price", with: @bookingticket.Price
    fill_in "Event name", with: @bookingticket.event_name
    fill_in "Location", with: @bookingticket.location
    click_on "Update Bookingticket"

    assert_text "Bookingticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookingticket" do
    visit bookingtickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookingticket was successfully destroyed"
  end
end
