require "application_system_test_case"

class PrColorsTest < ApplicationSystemTestCase
  setup do
    @pr_color = pr_colors(:one)
  end

  test "visiting the index" do
    visit pr_colors_url
    assert_selector "h1", text: "Pr Colors"
  end

  test "creating a Pr color" do
    visit pr_colors_url
    click_on "New Pr Color"

    fill_in "Color", with: @pr_color.color
    click_on "Create Pr color"

    assert_text "Pr color was successfully created"
    click_on "Back"
  end

  test "updating a Pr color" do
    visit pr_colors_url
    click_on "Edit", match: :first

    fill_in "Color", with: @pr_color.color
    click_on "Update Pr color"

    assert_text "Pr color was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr color" do
    visit pr_colors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr color was successfully destroyed"
  end
end
