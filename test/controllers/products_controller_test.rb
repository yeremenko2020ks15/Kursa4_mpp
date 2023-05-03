require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { SKUN: @product.SKUN, accessories: @product.accessories, alc_endurance: @product.alc_endurance, alc_strength: @product.alc_strength, description: @product.description, pr_brand_id: @product.pr_brand_id, pr_category_id: @product.pr_category_id, pr_classification_id: @product.pr_classification_id, pr_color_id: @product.pr_color_id, pr_country_id: @product.pr_country_id, pr_name: @product.pr_name, pr_sub_category_id: @product.pr_sub_category_id, pr_sweetness_id: @product.pr_sweetness_id, price_for_client: @product.price_for_client } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { SKUN: @product.SKUN, accessories: @product.accessories, alc_endurance: @product.alc_endurance, alc_strength: @product.alc_strength, description: @product.description, pr_brand_id: @product.pr_brand_id, pr_category_id: @product.pr_category_id, pr_classification_id: @product.pr_classification_id, pr_color_id: @product.pr_color_id, pr_country_id: @product.pr_country_id, pr_name: @product.pr_name, pr_sub_category_id: @product.pr_sub_category_id, pr_sweetness_id: @product.pr_sweetness_id, price_for_client: @product.price_for_client } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
