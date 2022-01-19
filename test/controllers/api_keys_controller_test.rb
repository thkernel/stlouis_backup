require 'test_helper'

class ApiKeysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_key = api_keys(:one)
  end

  test "should get index" do
    get api_keys_url
    assert_response :success
  end

  test "should get new" do
    get new_api_key_url
    assert_response :success
  end

  test "should create api_key" do
    assert_difference('ApiKey.count') do
      post api_keys_url, params: { api_key: { access_token: @api_key.access_token, account_id: @api_key.account_id, active: @api_key.active, expires_at: @api_key.expires_at } }
    end

    assert_redirected_to api_key_url(ApiKey.last)
  end

  test "should show api_key" do
    get api_key_url(@api_key)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_key_url(@api_key)
    assert_response :success
  end

  test "should update api_key" do
    patch api_key_url(@api_key), params: { api_key: { access_token: @api_key.access_token, account_id: @api_key.account_id, active: @api_key.active, expires_at: @api_key.expires_at } }
    assert_redirected_to api_key_url(@api_key)
  end

  test "should destroy api_key" do
    assert_difference('ApiKey.count', -1) do
      delete api_key_url(@api_key)
    end

    assert_redirected_to api_keys_url
  end
end
