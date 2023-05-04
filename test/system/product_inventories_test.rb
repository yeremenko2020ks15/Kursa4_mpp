require "application_system_test_case"

class ProductInventoriesTest < ApplicationSystemTestCase
  setup do
    @product_inventory = product_inventories(:one)
  end

  test "visiting the index" do
    visit product_inventories_url
    assert_selector "h1", text: "Product Inventories"
  end

  test "creating a Product inventory" do
    visit product_inventories_url
    click_on "New Product Inventory"

    fill_in "Price", with: @product_inventory.price
    fill_in "Product", with: @product_inventory.product_id
    fill_in "Quantity", with: @product_inventory.quantity
    click_on "Create Product inventory"

    assert_text "Product inventory was successfully created"
    click_on "Back"
  end

  test "updating a Product inventory" do
    visit product_inventories_url
    click_on "Edit", match: :first

    fill_in "Price", with: @product_inventory.price
    fill_in "Product", with: @product_inventory.product_id
    fill_in "Quantity", with: @product_inventory.quantity
    click_on "Update Product inventory"

    assert_text "Product inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Product inventory" do
    visit product_inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product inventory was successfully destroyed"
  end
end
