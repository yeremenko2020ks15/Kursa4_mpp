require "test_helper"

class PrColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_color = pr_colors(:one)
  end

  test "should get index" do
    get pr_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_color_url
    assert_response :success
  end

  test "should create pr_color" do
    assert_difference('PrColor.count') do
      post pr_colors_url, params: { pr_color: { color: @pr_color.color } }
    end

    assert_redirected_to pr_color_url(PrColor.last)
  end

  test "should show pr_color" do
    get pr_color_url(@pr_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_color_url(@pr_color)
    assert_response :success
  end

  test "should update pr_color" do
    patch pr_color_url(@pr_color), params: { pr_color: { color: @pr_color.color } }
    assert_redirected_to pr_color_url(@pr_color)
  end

end
