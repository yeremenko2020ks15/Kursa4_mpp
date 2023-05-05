require "test_helper"

class PrEndurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_endurance = pr_endurances(:one)
  end

  test "should get index" do
    get pr_endurances_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_endurance_url
    assert_response :success
  end

  test "should create pr_endurance" do
    assert_difference('PrEndurance.count') do
      post pr_endurances_url, params: { pr_endurance: { endurance: @pr_endurance.endurance } }
    end

    assert_redirected_to pr_endurance_url(PrEndurance.last)
  end

  test "should show pr_endurance" do
    get pr_endurance_url(@pr_endurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_endurance_url(@pr_endurance)
    assert_response :success
  end

  test "should update pr_endurance" do
    patch pr_endurance_url(@pr_endurance), params: { pr_endurance: { endurance: @pr_endurance.endurance } }
    assert_redirected_to pr_endurance_url(@pr_endurance)
  end

  test "should destroy pr_endurance" do
    assert_difference('PrEndurance.count', -1) do
      delete pr_endurance_url(@pr_endurance)
    end

    assert_redirected_to pr_endurances_url
  end
end
