require "test_helper"

class ProductInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_inventory = product_inventories(:one)
  end

  test "should get index" do
    get product_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_product_inventory_url
    assert_response :success
  end

  test "should show product_inventory" do
    get product_inventory_url(@product_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_inventory_url(@product_inventory)
    assert_response :success
  end

  test "should update product_inventory" do
    patch product_inventory_url(@product_inventory), params: { product_inventory: { price: @product_inventory.price, product_id: @product_inventory.product_id, quantity: @product_inventory.quantity } }
    assert_redirected_to product_inventory_url(@product_inventory)
  end

end
