require "test_helper"

class BookingticketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookingticket = bookingtickets(:one)
  end

  test "should get index" do
    get bookingtickets_url
    assert_response :success
  end

  test "should get new" do
    get new_bookingticket_url
    assert_response :success
  end

  test "should create bookingticket" do
    assert_difference('Bookingticket.count') do
      post bookingtickets_url, params: { bookingticket: { Date: @bookingticket.Date, Price: @bookingticket.Price, event_name: @bookingticket.event_name, location: @bookingticket.location } }
    end

    assert_redirected_to bookingticket_url(Bookingticket.last)
  end

  test "should show bookingticket" do
    get bookingticket_url(@bookingticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookingticket_url(@bookingticket)
    assert_response :success
  end

  test "should update bookingticket" do
    patch bookingticket_url(@bookingticket), params: { bookingticket: { Date: @bookingticket.Date, Price: @bookingticket.Price, event_name: @bookingticket.event_name, location: @bookingticket.location } }
    assert_redirected_to bookingticket_url(@bookingticket)
  end

  test "should destroy bookingticket" do
    assert_difference('Bookingticket.count', -1) do
      delete bookingticket_url(@bookingticket)
    end

    assert_redirected_to bookingtickets_url
  end
end
