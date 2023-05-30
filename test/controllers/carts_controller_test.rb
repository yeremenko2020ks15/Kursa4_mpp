require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get cart_url
    assert_response :success
  end

  test "should show cart" do
    get cart_url(@cart)
    assert_response :success
  end

end
