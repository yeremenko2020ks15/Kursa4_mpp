require "application_system_test_case"

class PrSweetnessesTest < ApplicationSystemTestCase
  setup do
    @pr_sweetness = pr_sweetnesses(:one)
  end

  test "visiting the index" do
    visit pr_sweetnesses_url
    assert_selector "h1", text: "Pr Sweetnesses"
  end

  test "creating a Pr sweetness" do
    visit pr_sweetnesses_url
    click_on "New Pr Sweetness"

    fill_in "Sweetness", with: @pr_sweetness.sweetness
    click_on "Create Pr sweetness"

    assert_text "Pr sweetness was successfully created"
    click_on "Back"
  end

  test "updating a Pr sweetness" do
    visit pr_sweetnesses_url
    click_on "Edit", match: :first

    fill_in "Sweetness", with: @pr_sweetness.sweetness
    click_on "Update Pr sweetness"

    assert_text "Pr sweetness was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr sweetness" do
    visit pr_sweetnesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr sweetness was successfully destroyed"
  end
end
