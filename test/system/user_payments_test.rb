require "application_system_test_case"

class UserPaymentsTest < ApplicationSystemTestCase
  setup do
    @user_payment = user_payments(:one)
  end

  test "visiting the index" do
    visit user_payments_url
    assert_selector "h1", text: "User Payments"
  end

  test "creating a User payment" do
    visit user_payments_url
    click_on "New User Payment"

    fill_in "Code", with: @user_payment.code
    fill_in "Cvv", with: @user_payment.cvv
    fill_in "Date", with: @user_payment.date
    fill_in "Name", with: @user_payment.name
    fill_in "User", with: @user_payment.user_id
    click_on "Create User payment"

    assert_text "User payment was successfully created"
    click_on "Back"
  end

  test "updating a User payment" do
    visit user_payments_url
    click_on "Edit", match: :first

    fill_in "Code", with: @user_payment.code
    fill_in "Cvv", with: @user_payment.cvv
    fill_in "Date", with: @user_payment.date
    fill_in "Name", with: @user_payment.name
    fill_in "User", with: @user_payment.user_id
    click_on "Update User payment"

    assert_text "User payment was successfully updated"
    click_on "Back"
  end

  test "destroying a User payment" do
    visit user_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User payment was successfully destroyed"
  end
end
