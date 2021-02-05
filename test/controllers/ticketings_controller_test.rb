require "test_helper"

class TicketingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticketing = ticketings(:one)
  end

  test "should get index" do
    get ticketings_url
    assert_response :success
  end

  test "should get new" do
    get new_ticketing_url
    assert_response :success
  end

  test "should create ticketing" do
    assert_difference('Ticketing.count') do
      post ticketings_url, params: { ticketing: { Class: @ticketing.Class, Date: @ticketing.Date, Price: @ticketing.Price, To: @ticketing.To, Trains: @ticketing.Trains, from: @ticketing.from, system: @ticketing.system } }
    end

    assert_redirected_to ticketing_url(Ticketing.last)
  end

  test "should show ticketing" do
    get ticketing_url(@ticketing)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticketing_url(@ticketing)
    assert_response :success
  end

  test "should update ticketing" do
    patch ticketing_url(@ticketing), params: { ticketing: { Class: @ticketing.Class, Date: @ticketing.Date, Price: @ticketing.Price, To: @ticketing.To, Trains: @ticketing.Trains, from: @ticketing.from, system: @ticketing.system } }
    assert_redirected_to ticketing_url(@ticketing)
  end

  test "should destroy ticketing" do
    assert_difference('Ticketing.count', -1) do
      delete ticketing_url(@ticketing)
    end

    assert_redirected_to ticketings_url
  end
end
