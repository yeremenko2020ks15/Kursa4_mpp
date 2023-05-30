require "test_helper"

class DiscountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discount = discounts(:one)
  end

  test "should get index" do
    get discounts_url
    assert_response :success
  end

  test "should get new" do
    get new_discount_url
    assert_response :success
  end

  test "should create discount" do
    assert_difference('Discount.count') do
      post discounts_url, params: { discount: { disc: @discount.disc, is_active: @discount.is_active, product_id: @discount.product_id } }
    end

    assert_redirected_to discount_url(Discount.last)
  end

  test "should show discount" do
    get discount_url(@discount)
    assert_response :success
  end

  test "should get edit" do
    get edit_discount_url(@discount)
    assert_response :success
  end

  test "should update discount" do
    patch discount_url(@discount), params: { discount: { disc: @discount.disc, is_active: @discount.is_active, product_id: @discount.product_id } }
    assert_redirected_to discount_url(@discount)
  end

end
