require "application_system_test_case"

class PrCategoriesTest < ApplicationSystemTestCase
  setup do
    @pr_category = pr_categories(:one)
  end

  test "visiting the index" do
    visit pr_categories_url
    assert_selector "h1", text: "Pr Categories"
  end

  test "creating a Pr category" do
    visit pr_categories_url
    click_on "New Pr Category"

    fill_in "Category", with: @pr_category.category
    click_on "Create Pr category"

    assert_text "Pr category was successfully created"
    click_on "Back"
  end

  test "updating a Pr category" do
    visit pr_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @pr_category.category
    click_on "Update Pr category"

    assert_text "Pr category was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr category" do
    visit pr_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr category was successfully destroyed"
  end
end
