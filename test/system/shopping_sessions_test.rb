require "application_system_test_case"

class ShoppingSessionsTest < ApplicationSystemTestCase
  setup do
    @shopping_session = shopping_sessions(:one)
  end

  test "visiting the index" do
    visit shopping_sessions_url
    assert_selector "h1", text: "Shopping Sessions"
  end

  test "creating a Shopping session" do
    visit shopping_sessions_url
    click_on "New Shopping Session"

    fill_in "Total", with: @shopping_session.total
    fill_in "User", with: @shopping_session.user_id
    click_on "Create Shopping session"

    assert_text "Shopping session was successfully created"
    click_on "Back"
  end

  test "updating a Shopping session" do
    visit shopping_sessions_url
    click_on "Edit", match: :first

    fill_in "Total", with: @shopping_session.total
    fill_in "User", with: @shopping_session.user_id
    click_on "Update Shopping session"

    assert_text "Shopping session was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopping session" do
    visit shopping_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopping session was successfully destroyed"
  end
end
