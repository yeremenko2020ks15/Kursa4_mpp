require "test_helper"

class PrSweetnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_sweetness = pr_sweetnesses(:one)
  end

  test "should get index" do
    get pr_sweetnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_sweetness_url
    assert_response :success
  end

  test "should create pr_sweetness" do
    assert_difference('PrSweetness.count') do
      post pr_sweetnesses_url, params: { pr_sweetness: { sweetness: @pr_sweetness.sweetness } }
    end

    assert_redirected_to pr_sweetness_url(PrSweetness.last)
  end

  test "should show pr_sweetness" do
    get pr_sweetness_url(@pr_sweetness)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_sweetness_url(@pr_sweetness)
    assert_response :success
  end

  test "should update pr_sweetness" do
    patch pr_sweetness_url(@pr_sweetness), params: { pr_sweetness: { sweetness: @pr_sweetness.sweetness } }
    assert_redirected_to pr_sweetness_url(@pr_sweetness)
  end

end
