require 'test_helper'

class Hr::Config::CareercodesControllerTest < ActionController::TestCase
  setup do
    @hr_config_careercode = hr_config_careercodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_careercodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_careercode" do
    assert_difference('Hr::Config::Careercode.count') do
      post :create, hr_config_careercode: { code: @hr_config_careercode.code, description: @hr_config_careercode.description, khdescription: @hr_config_careercode.khdescription, khtitle: @hr_config_careercode.khtitle, title: @hr_config_careercode.title, usercreate: @hr_config_careercode.usercreate, userupdate: @hr_config_careercode.userupdate }
    end

    assert_redirected_to hr_config_careercode_path(assigns(:hr_config_careercode))
  end

  test "should show hr_config_careercode" do
    get :show, id: @hr_config_careercode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_careercode
    assert_response :success
  end

  test "should update hr_config_careercode" do
    patch :update, id: @hr_config_careercode, hr_config_careercode: { code: @hr_config_careercode.code, description: @hr_config_careercode.description, khdescription: @hr_config_careercode.khdescription, khtitle: @hr_config_careercode.khtitle, title: @hr_config_careercode.title, usercreate: @hr_config_careercode.usercreate, userupdate: @hr_config_careercode.userupdate }
    assert_redirected_to hr_config_careercode_path(assigns(:hr_config_careercode))
  end

  test "should destroy hr_config_careercode" do
    assert_difference('Hr::Config::Careercode.count', -1) do
      delete :destroy, id: @hr_config_careercode
    end

    assert_redirected_to hr_config_careercodes_path
  end
end
