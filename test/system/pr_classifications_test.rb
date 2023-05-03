require "application_system_test_case"

class PrClassificationsTest < ApplicationSystemTestCase
  setup do
    @pr_classification = pr_classifications(:one)
  end

  test "visiting the index" do
    visit pr_classifications_url
    assert_selector "h1", text: "Pr Classifications"
  end

  test "creating a Pr classification" do
    visit pr_classifications_url
    click_on "New Pr Classification"

    fill_in "Classification", with: @pr_classification.classification
    click_on "Create Pr classification"

    assert_text "Pr classification was successfully created"
    click_on "Back"
  end

  test "updating a Pr classification" do
    visit pr_classifications_url
    click_on "Edit", match: :first

    fill_in "Classification", with: @pr_classification.classification
    click_on "Update Pr classification"

    assert_text "Pr classification was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr classification" do
    visit pr_classifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr classification was successfully destroyed"
  end
end
