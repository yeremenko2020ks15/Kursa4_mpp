require "application_system_test_case"

class PrVolumesTest < ApplicationSystemTestCase
  setup do
    @pr_volume = pr_volumes(:one)
  end

  test "visiting the index" do
    visit pr_volumes_url
    assert_selector "h1", text: "Pr Volumes"
  end

  test "creating a Pr volume" do
    visit pr_volumes_url
    click_on "New Pr Volume"

    fill_in "Volume", with: @pr_volume.volume
    click_on "Create Pr volume"

    assert_text "Pr volume was successfully created"
    click_on "Back"
  end

  test "updating a Pr volume" do
    visit pr_volumes_url
    click_on "Edit", match: :first

    fill_in "Volume", with: @pr_volume.volume
    click_on "Update Pr volume"

    assert_text "Pr volume was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr volume" do
    visit pr_volumes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr volume was successfully destroyed"
  end
end
