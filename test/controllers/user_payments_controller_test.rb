require "test_helper"

class UserPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_payment = user_payments(:one)
  end

  test "should get index" do
    get user_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_user_payment_url
    assert_response :success
  end

  test "should create user_payment" do
    assert_difference('UserPayment.count') do
      post user_payments_url, params: { user_payment: { code: @user_payment.code, cvv: @user_payment.cvv, date: @user_payment.date, name: @user_payment.name, user_id: @user_payment.user_id } }
    end

    assert_redirected_to user_payment_url(UserPayment.last)
  end

  test "should show user_payment" do
    get user_payment_url(@user_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_payment_url(@user_payment)
    assert_response :success
  end

  test "should update user_payment" do
    patch user_payment_url(@user_payment), params: { user_payment: { code: @user_payment.code, cvv: @user_payment.cvv, date: @user_payment.date, name: @user_payment.name, user_id: @user_payment.user_id } }
    assert_redirected_to user_payment_url(@user_payment)
  end

  test "should destroy user_payment" do
    assert_difference('UserPayment.count', -1) do
      delete user_payment_url(@user_payment)
    end

    assert_redirected_to user_payments_url
  end
end
