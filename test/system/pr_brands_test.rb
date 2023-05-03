require "application_system_test_case"

class PrBrandsTest < ApplicationSystemTestCase
  setup do
    @pr_brand = pr_brands(:one)
  end

  test "visiting the index" do
    visit pr_brands_url
    assert_selector "h1", text: "Pr Brands"
  end

  test "creating a Pr brand" do
    visit pr_brands_url
    click_on "New Pr Brand"

    fill_in "Brand", with: @pr_brand.brand
    click_on "Create Pr brand"

    assert_text "Pr brand was successfully created"
    click_on "Back"
  end

  test "updating a Pr brand" do
    visit pr_brands_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @pr_brand.brand
    click_on "Update Pr brand"

    assert_text "Pr brand was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr brand" do
    visit pr_brands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr brand was successfully destroyed"
  end
end
