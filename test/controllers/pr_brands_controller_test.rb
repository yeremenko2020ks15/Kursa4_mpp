require "test_helper"

class PrBrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_brand = pr_brands(:one)
  end

  test "should get index" do
    get pr_brands_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_brand_url
    assert_response :success
  end

  test "should create pr_brand" do
    assert_difference('PrBrand.count') do
      post pr_brands_url, params: { pr_brand: { brand: @pr_brand.brand } }
    end

    assert_redirected_to pr_brand_url(PrBrand.last)
  end

  test "should show pr_brand" do
    get pr_brand_url(@pr_brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_brand_url(@pr_brand)
    assert_response :success
  end

  test "should update pr_brand" do
    patch pr_brand_url(@pr_brand), params: { pr_brand: { brand: @pr_brand.brand } }
    assert_redirected_to pr_brand_url(@pr_brand)
  end

end
