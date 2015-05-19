require 'test_helper'

class Hr::Config::MaritalsControllerTest < ActionController::TestCase
  setup do
    @hr_config_marital = hr_config_maritals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_maritals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_marital" do
    assert_difference('Hr::Config::Marital.count') do
      post :create, hr_config_marital: { code: @hr_config_marital.code, description: @hr_config_marital.description, khdescription: @hr_config_marital.khdescription, khtitle: @hr_config_marital.khtitle, title: @hr_config_marital.title, usercreate: @hr_config_marital.usercreate, userupdate: @hr_config_marital.userupdate }
    end

    assert_redirected_to hr_config_marital_path(assigns(:hr_config_marital))
  end

  test "should show hr_config_marital" do
    get :show, id: @hr_config_marital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_marital
    assert_response :success
  end

  test "should update hr_config_marital" do
    patch :update, id: @hr_config_marital, hr_config_marital: { code: @hr_config_marital.code, description: @hr_config_marital.description, khdescription: @hr_config_marital.khdescription, khtitle: @hr_config_marital.khtitle, title: @hr_config_marital.title, usercreate: @hr_config_marital.usercreate, userupdate: @hr_config_marital.userupdate }
    assert_redirected_to hr_config_marital_path(assigns(:hr_config_marital))
  end

  test "should destroy hr_config_marital" do
    assert_difference('Hr::Config::Marital.count', -1) do
      delete :destroy, id: @hr_config_marital
    end

    assert_redirected_to hr_config_maritals_path
  end
end
