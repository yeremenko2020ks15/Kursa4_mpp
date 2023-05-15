require "application_system_test_case"

class PrAlcoholsTest < ApplicationSystemTestCase
  setup do
    @pr_alcohol = pr_alcohols(:one)
  end

  test "visiting the index" do
    visit pr_alcohols_url
    assert_selector "h1", text: "Pr Alcohols"
  end

  test "creating a Pr alcohol" do
    visit pr_alcohols_url
    click_on "New Pr Alcohol"

    fill_in "Alcohol", with: @pr_alcohol.alcohol
    click_on "Create Pr alcohol"

    assert_text "Pr alcohol was successfully created"
    click_on "Back"
  end

  test "updating a Pr alcohol" do
    visit pr_alcohols_url
    click_on "Edit", match: :first

    fill_in "Alcohol", with: @pr_alcohol.alcohol
    click_on "Update Pr alcohol"

    assert_text "Pr alcohol was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr alcohol" do
    visit pr_alcohols_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr alcohol was successfully destroyed"
  end
end
