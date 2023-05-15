require "test_helper"

class PrAlcoholsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_alcohol = pr_alcohols(:one)
  end

  test "should get index" do
    get pr_alcohols_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_alcohol_url
    assert_response :success
  end

  test "should create pr_alcohol" do
    assert_difference('PrAlcohol.count') do
      post pr_alcohols_url, params: { pr_alcohol: { alcohol: @pr_alcohol.alcohol } }
    end

    assert_redirected_to pr_alcohol_url(PrAlcohol.last)
  end

  test "should show pr_alcohol" do
    get pr_alcohol_url(@pr_alcohol)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_alcohol_url(@pr_alcohol)
    assert_response :success
  end

  test "should update pr_alcohol" do
    patch pr_alcohol_url(@pr_alcohol), params: { pr_alcohol: { alcohol: @pr_alcohol.alcohol } }
    assert_redirected_to pr_alcohol_url(@pr_alcohol)
  end

  test "should destroy pr_alcohol" do
    assert_difference('PrAlcohol.count', -1) do
      delete pr_alcohol_url(@pr_alcohol)
    end

    assert_redirected_to pr_alcohols_url
  end
end
