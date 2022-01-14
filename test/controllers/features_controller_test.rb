require 'test_helper'

class FeaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feature = features(:one)
  end

  test "should get index" do
    get features_url
    assert_response :success
  end

  test "should get new" do
    get new_feature_url
    assert_response :success
  end

  test "should create feature" do
    assert_difference('Feature.count') do
      post features_url, params: { feature: { description: @feature.description, name: @feature.name, status: @feature.status, subject_class: @feature.subject_class, uid: @feature.uid } }
    end

    assert_redirected_to feature_url(Feature.last)
  end

  test "should show feature" do
    get feature_url(@feature)
    assert_response :success
  end

  test "should get edit" do
    get edit_feature_url(@feature)
    assert_response :success
  end

  test "should update feature" do
    patch feature_url(@feature), params: { feature: { description: @feature.description, name: @feature.name, status: @feature.status, subject_class: @feature.subject_class, uid: @feature.uid } }
    assert_redirected_to feature_url(@feature)
  end

  test "should destroy feature" do
    assert_difference('Feature.count', -1) do
      delete feature_url(@feature)
    end

    assert_redirected_to features_url
  end
end
