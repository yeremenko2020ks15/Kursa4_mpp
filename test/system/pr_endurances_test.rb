require "application_system_test_case"

class PrEndurancesTest < ApplicationSystemTestCase
  setup do
    @pr_endurance = pr_endurances(:one)
  end

  test "visiting the index" do
    visit pr_endurances_url
    assert_selector "h1", text: "Pr Endurances"
  end

  test "creating a Pr endurance" do
    visit pr_endurances_url
    click_on "New Pr Endurance"

    fill_in "Endurance", with: @pr_endurance.endurance
    click_on "Create Pr endurance"

    assert_text "Pr endurance was successfully created"
    click_on "Back"
  end

  test "updating a Pr endurance" do
    visit pr_endurances_url
    click_on "Edit", match: :first

    fill_in "Endurance", with: @pr_endurance.endurance
    click_on "Update Pr endurance"

    assert_text "Pr endurance was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr endurance" do
    visit pr_endurances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr endurance was successfully destroyed"
  end
end
