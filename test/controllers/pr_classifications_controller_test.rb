require "test_helper"

class PrClassificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr_classification = pr_classifications(:one)
  end

  test "should get index" do
    get pr_classifications_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_classification_url
    assert_response :success
  end

  test "should create pr_classification" do
    assert_difference('PrClassification.count') do
      post pr_classifications_url, params: { pr_classification: { classification: @pr_classification.classification } }
    end

    assert_redirected_to pr_classification_url(PrClassification.last)
  end

  test "should show pr_classification" do
    get pr_classification_url(@pr_classification)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_classification_url(@pr_classification)
    assert_response :success
  end

  test "should update pr_classification" do
    patch pr_classification_url(@pr_classification), params: { pr_classification: { classification: @pr_classification.classification } }
    assert_redirected_to pr_classification_url(@pr_classification)
  end

  test "should destroy pr_classification" do
    assert_difference('PrClassification.count', -1) do
      delete pr_classification_url(@pr_classification)
    end

    assert_redirected_to pr_classifications_url
  end
end
