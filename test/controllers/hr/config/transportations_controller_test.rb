require 'test_helper'

class Hr::Config::TransportationsControllerTest < ActionController::TestCase
  setup do
    @hr_config_transportation = hr_config_transportations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_transportations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_transportation" do
    assert_difference('Hr::Config::Transportation.count') do
      post :create, hr_config_transportation: { code: @hr_config_transportation.code, description: @hr_config_transportation.description, khdescription: @hr_config_transportation.khdescription, khtitle: @hr_config_transportation.khtitle, title: @hr_config_transportation.title, usercreate: @hr_config_transportation.usercreate, userupdate: @hr_config_transportation.userupdate }
    end

    assert_redirected_to hr_config_transportation_path(assigns(:hr_config_transportation))
  end

  test "should show hr_config_transportation" do
    get :show, id: @hr_config_transportation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_transportation
    assert_response :success
  end

  test "should update hr_config_transportation" do
    patch :update, id: @hr_config_transportation, hr_config_transportation: { code: @hr_config_transportation.code, description: @hr_config_transportation.description, khdescription: @hr_config_transportation.khdescription, khtitle: @hr_config_transportation.khtitle, title: @hr_config_transportation.title, usercreate: @hr_config_transportation.usercreate, userupdate: @hr_config_transportation.userupdate }
    assert_redirected_to hr_config_transportation_path(assigns(:hr_config_transportation))
  end

  test "should destroy hr_config_transportation" do
    assert_difference('Hr::Config::Transportation.count', -1) do
      delete :destroy, id: @hr_config_transportation
    end

    assert_redirected_to hr_config_transportations_path
  end
end
