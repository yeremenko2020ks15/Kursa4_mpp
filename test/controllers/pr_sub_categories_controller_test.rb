require "test_helper"

class PrSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_sub_category = pr_sub_categories(:one)
  end

  test "should get index" do
    get pr_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_sub_category_url
    assert_response :success
  end

  test "should create pr_sub_category" do
    assert_difference('PrSubCategory.count') do
      post pr_sub_categories_url, params: { pr_sub_category: { sub_category: @pr_sub_category.sub_category } }
    end

    assert_redirected_to pr_sub_category_url(PrSubCategory.last)
  end

  test "should show pr_sub_category" do
    get pr_sub_category_url(@pr_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_sub_category_url(@pr_sub_category)
    assert_response :success
  end

  test "should update pr_sub_category" do
    patch pr_sub_category_url(@pr_sub_category), params: { pr_sub_category: { sub_category: @pr_sub_category.sub_category } }
    assert_redirected_to pr_sub_category_url(@pr_sub_category)
  end

end
