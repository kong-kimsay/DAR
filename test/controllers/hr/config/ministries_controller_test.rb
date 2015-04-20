require 'test_helper'

class Hr::Config::MinistriesControllerTest < ActionController::TestCase
  setup do
    @hr_config_ministry = hr_config_ministries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_ministries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_ministry" do
    assert_difference('Hr::Config::Ministry.count') do
      post :create, hr_config_ministry: { code: @hr_config_ministry.code, description: @hr_config_ministry.description, khdescription: @hr_config_ministry.khdescription, khtitle: @hr_config_ministry.khtitle, title: @hr_config_ministry.title, usercreate: @hr_config_ministry.usercreate, userupdate: @hr_config_ministry.userupdate }
    end

    assert_redirected_to hr_config_ministry_path(assigns(:hr_config_ministry))
  end

  test "should show hr_config_ministry" do
    get :show, id: @hr_config_ministry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_ministry
    assert_response :success
  end

  test "should update hr_config_ministry" do
    patch :update, id: @hr_config_ministry, hr_config_ministry: { code: @hr_config_ministry.code, description: @hr_config_ministry.description, khdescription: @hr_config_ministry.khdescription, khtitle: @hr_config_ministry.khtitle, title: @hr_config_ministry.title, usercreate: @hr_config_ministry.usercreate, userupdate: @hr_config_ministry.userupdate }
    assert_redirected_to hr_config_ministry_path(assigns(:hr_config_ministry))
  end

  test "should destroy hr_config_ministry" do
    assert_difference('Hr::Config::Ministry.count', -1) do
      delete :destroy, id: @hr_config_ministry
    end

    assert_redirected_to hr_config_ministries_path
  end
end
