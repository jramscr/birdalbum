require 'test_helper'

class CommonNamesControllerTest < ActionController::TestCase
  setup do
    @common_name = common_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_name" do
    assert_difference('CommonName.count') do
      post :create, common_name: {  }
    end

    assert_redirected_to common_name_path(assigns(:common_name))
  end

  test "should show common_name" do
    get :show, id: @common_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @common_name
    assert_response :success
  end

  test "should update common_name" do
    patch :update, id: @common_name, common_name: {  }
    assert_redirected_to common_name_path(assigns(:common_name))
  end

  test "should destroy common_name" do
    assert_difference('CommonName.count', -1) do
      delete :destroy, id: @common_name
    end

    assert_redirected_to common_names_path
  end
end
