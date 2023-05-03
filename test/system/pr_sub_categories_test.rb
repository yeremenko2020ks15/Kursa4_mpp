require "application_system_test_case"

class PrSubCategoriesTest < ApplicationSystemTestCase
  setup do
    @pr_sub_category = pr_sub_categories(:one)
  end

  test "visiting the index" do
    visit pr_sub_categories_url
    assert_selector "h1", text: "Pr Sub Categories"
  end

  test "creating a Pr sub category" do
    visit pr_sub_categories_url
    click_on "New Pr Sub Category"

    fill_in "Sub category", with: @pr_sub_category.sub_category
    click_on "Create Pr sub category"

    assert_text "Pr sub category was successfully created"
    click_on "Back"
  end

  test "updating a Pr sub category" do
    visit pr_sub_categories_url
    click_on "Edit", match: :first

    fill_in "Sub category", with: @pr_sub_category.sub_category
    click_on "Update Pr sub category"

    assert_text "Pr sub category was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr sub category" do
    visit pr_sub_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr sub category was successfully destroyed"
  end
end
