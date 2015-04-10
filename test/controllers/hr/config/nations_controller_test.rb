require 'test_helper'

class Hr::Config::NationsControllerTest < ActionController::TestCase
  setup do
    @hr_config_nation = hr_config_nations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_nations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_nation" do
    assert_difference('Hr::Config::Nation.count') do
      post :create, hr_config_nation: { code: @hr_config_nation.code, description: @hr_config_nation.description, khdescription: @hr_config_nation.khdescription, khtitle: @hr_config_nation.khtitle, title: @hr_config_nation.title, usercreate: @hr_config_nation.usercreate, userupdate: @hr_config_nation.userupdate }
    end

    assert_redirected_to hr_config_nation_path(assigns(:hr_config_nation))
  end

  test "should show hr_config_nation" do
    get :show, id: @hr_config_nation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_nation
    assert_response :success
  end

  test "should update hr_config_nation" do
    patch :update, id: @hr_config_nation, hr_config_nation: { code: @hr_config_nation.code, description: @hr_config_nation.description, khdescription: @hr_config_nation.khdescription, khtitle: @hr_config_nation.khtitle, title: @hr_config_nation.title, usercreate: @hr_config_nation.usercreate, userupdate: @hr_config_nation.userupdate }
    assert_redirected_to hr_config_nation_path(assigns(:hr_config_nation))
  end

  test "should destroy hr_config_nation" do
    assert_difference('Hr::Config::Nation.count', -1) do
      delete :destroy, id: @hr_config_nation
    end

    assert_redirected_to hr_config_nations_path
  end
end
