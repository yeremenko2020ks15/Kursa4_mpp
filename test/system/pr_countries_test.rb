require "application_system_test_case"

class PrCountriesTest < ApplicationSystemTestCase
  setup do
    @pr_country = pr_countries(:one)
  end

  test "visiting the index" do
    visit pr_countries_url
    assert_selector "h1", text: "Pr Countries"
  end

  test "creating a Pr country" do
    visit pr_countries_url
    click_on "New Pr Country"

    fill_in "Country", with: @pr_country.country
    click_on "Create Pr country"

    assert_text "Pr country was successfully created"
    click_on "Back"
  end

  test "updating a Pr country" do
    visit pr_countries_url
    click_on "Edit", match: :first

    fill_in "Country", with: @pr_country.country
    click_on "Update Pr country"

    assert_text "Pr country was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr country" do
    visit pr_countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr country was successfully destroyed"
  end
end
