require "test_helper"

class PrCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_category = pr_categories(:one)
  end

  test "should get index" do
    get pr_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_category_url
    assert_response :success
  end

  test "should create pr_category" do
    assert_difference('PrCategory.count') do
      post pr_categories_url, params: { pr_category: { category: @pr_category.category } }
    end

    assert_redirected_to pr_category_url(PrCategory.last)
  end

  test "should show pr_category" do
    get pr_category_url(@pr_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_category_url(@pr_category)
    assert_response :success
  end

  test "should update pr_category" do
    patch pr_category_url(@pr_category), params: { pr_category: { category: @pr_category.category } }
    assert_redirected_to pr_category_url(@pr_category)
  end

end
