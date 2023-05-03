require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Skun", with: @product.SKUN
    check "Accessories" if @product.accessories
    fill_in "Alc endurance", with: @product.alc_endurance
    fill_in "Alc strength", with: @product.alc_strength
    fill_in "Description", with: @product.description
    fill_in "Pr brand", with: @product.pr_brand_id
    fill_in "Pr category", with: @product.pr_category_id
    fill_in "Pr classification", with: @product.pr_classification_id
    fill_in "Pr color", with: @product.pr_color_id
    fill_in "Pr country", with: @product.pr_country_id
    fill_in "Pr name", with: @product.pr_name
    fill_in "Pr sub category", with: @product.pr_sub_category_id
    fill_in "Pr sweetness", with: @product.pr_sweetness_id
    fill_in "Price for client", with: @product.price_for_client
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Skun", with: @product.SKUN
    check "Accessories" if @product.accessories
    fill_in "Alc endurance", with: @product.alc_endurance
    fill_in "Alc strength", with: @product.alc_strength
    fill_in "Description", with: @product.description
    fill_in "Pr brand", with: @product.pr_brand_id
    fill_in "Pr category", with: @product.pr_category_id
    fill_in "Pr classification", with: @product.pr_classification_id
    fill_in "Pr color", with: @product.pr_color_id
    fill_in "Pr country", with: @product.pr_country_id
    fill_in "Pr name", with: @product.pr_name
    fill_in "Pr sub category", with: @product.pr_sub_category_id
    fill_in "Pr sweetness", with: @product.pr_sweetness_id
    fill_in "Price for client", with: @product.price_for_client
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
