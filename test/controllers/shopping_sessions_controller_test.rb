require "test_helper"

class ShoppingSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping_session = shopping_sessions(:one)
  end

  test "should get index" do
    get shopping_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_shopping_session_url
    assert_response :success
  end

  test "should create shopping_session" do
    assert_difference('ShoppingSession.count') do
      post shopping_sessions_url, params: { shopping_session: { total: @shopping_session.total, user_id: @shopping_session.user_id } }
    end

    assert_redirected_to shopping_session_url(ShoppingSession.last)
  end

  test "should show shopping_session" do
    get shopping_session_url(@shopping_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopping_session_url(@shopping_session)
    assert_response :success
  end

  test "should update shopping_session" do
    patch shopping_session_url(@shopping_session), params: { shopping_session: { total: @shopping_session.total, user_id: @shopping_session.user_id } }
    assert_redirected_to shopping_session_url(@shopping_session)
  end

  test "should destroy shopping_session" do
    assert_difference('ShoppingSession.count', -1) do
      delete shopping_session_url(@shopping_session)
    end

    assert_redirected_to shopping_sessions_url
  end
end
