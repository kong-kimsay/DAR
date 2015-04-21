require 'test_helper'

class Hr::Config::ProvincesControllerTest < ActionController::TestCase
  setup do
    @hr_config_province = hr_config_provinces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_provinces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_province" do
    assert_difference('Hr::Config::Province.count') do
      post :create, hr_config_province: { code: @hr_config_province.code, description: @hr_config_province.description, khdescription: @hr_config_province.khdescription, khtitle: @hr_config_province.khtitle, title: @hr_config_province.title, usercreate: @hr_config_province.usercreate, userupdate: @hr_config_province.userupdate }
    end

    assert_redirected_to hr_config_province_path(assigns(:hr_config_province))
  end

  test "should show hr_config_province" do
    get :show, id: @hr_config_province
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_province
    assert_response :success
  end

  test "should update hr_config_province" do
    patch :update, id: @hr_config_province, hr_config_province: { code: @hr_config_province.code, description: @hr_config_province.description, khdescription: @hr_config_province.khdescription, khtitle: @hr_config_province.khtitle, title: @hr_config_province.title, usercreate: @hr_config_province.usercreate, userupdate: @hr_config_province.userupdate }
    assert_redirected_to hr_config_province_path(assigns(:hr_config_province))
  end

  test "should destroy hr_config_province" do
    assert_difference('Hr::Config::Province.count', -1) do
      delete :destroy, id: @hr_config_province
    end

    assert_redirected_to hr_config_provinces_path
  end
end
