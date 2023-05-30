require "test_helper"

class PrVolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_volume = pr_volumes(:one)
  end

  test "should get index" do
    get pr_volumes_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_volume_url
    assert_response :success
  end

  test "should create pr_volume" do
    assert_difference('PrVolume.count') do
      post pr_volumes_url, params: { pr_volume: { volume: @pr_volume.volume } }
    end

    assert_redirected_to pr_volume_url(PrVolume.last)
  end

  test "should show pr_volume" do
    get pr_volume_url(@pr_volume)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_volume_url(@pr_volume)
    assert_response :success
  end

  test "should update pr_volume" do
    patch pr_volume_url(@pr_volume), params: { pr_volume: { volume: @pr_volume.volume } }
    assert_redirected_to pr_volume_url(@pr_volume)
  end

end
