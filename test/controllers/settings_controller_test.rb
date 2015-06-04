require 'test_helper'

class SettingsControllerTest < ActionController::TestCase
  test "should get general" do
    get :general
    assert_response :success
  end

end
