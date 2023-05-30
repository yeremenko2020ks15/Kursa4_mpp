require "test_helper"

class PrCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_country = pr_countries(:one)
  end

  test "should get index" do
    get pr_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_country_url
    assert_response :success
  end

  test "should create pr_country" do
    assert_difference('PrCountry.count') do
      post pr_countries_url, params: { pr_country: { country: @pr_country.country } }
    end

    assert_redirected_to pr_country_url(PrCountry.last)
  end

  test "should show pr_country" do
    get pr_country_url(@pr_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_country_url(@pr_country)
    assert_response :success
  end

  test "should update pr_country" do
    patch pr_country_url(@pr_country), params: { pr_country: { country: @pr_country.country } }
    assert_redirected_to pr_country_url(@pr_country)
  end

end
