require 'test_helper'

class SmtpServerSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smtp_server_setting = smtp_server_settings(:one)
  end

  test "should get index" do
    get smtp_server_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_smtp_server_setting_url
    assert_response :success
  end

  test "should create smtp_server_setting" do
    assert_difference('SmtpServerSetting.count') do
      post smtp_server_settings_url, params: { smtp_server_setting: { account_id: @smtp_server_setting.account_id, authentication: @smtp_server_setting.authentication, domain: @smtp_server_setting.domain, enable_starttls_auto: @smtp_server_setting.enable_starttls_auto, host_name: @smtp_server_setting.host_name, port: @smtp_server_setting.port, ssl: @smtp_server_setting.ssl, uid: @smtp_server_setting.uid, user_name: @smtp_server_setting.user_name, user_password: @smtp_server_setting.user_password } }
    end

    assert_redirected_to smtp_server_setting_url(SmtpServerSetting.last)
  end

  test "should show smtp_server_setting" do
    get smtp_server_setting_url(@smtp_server_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_smtp_server_setting_url(@smtp_server_setting)
    assert_response :success
  end

  test "should update smtp_server_setting" do
    patch smtp_server_setting_url(@smtp_server_setting), params: { smtp_server_setting: { account_id: @smtp_server_setting.account_id, authentication: @smtp_server_setting.authentication, domain: @smtp_server_setting.domain, enable_starttls_auto: @smtp_server_setting.enable_starttls_auto, host_name: @smtp_server_setting.host_name, port: @smtp_server_setting.port, ssl: @smtp_server_setting.ssl, uid: @smtp_server_setting.uid, user_name: @smtp_server_setting.user_name, user_password: @smtp_server_setting.user_password } }
    assert_redirected_to smtp_server_setting_url(@smtp_server_setting)
  end

  test "should destroy smtp_server_setting" do
    assert_difference('SmtpServerSetting.count', -1) do
      delete smtp_server_setting_url(@smtp_server_setting)
    end

    assert_redirected_to smtp_server_settings_url
  end
end
