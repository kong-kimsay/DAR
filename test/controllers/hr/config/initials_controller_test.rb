require 'test_helper'

class Hr::Config::InitialsControllerTest < ActionController::TestCase
  setup do
    @hr_config_initial = hr_config_initials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_initials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_initial" do
    assert_difference('Hr::Config::Initial.count') do
      post :create, hr_config_initial: { code: @hr_config_initial.code, description: @hr_config_initial.description, khdescription: @hr_config_initial.khdescription, khtitle: @hr_config_initial.khtitle, title: @hr_config_initial.title, usercreate: @hr_config_initial.usercreate, userupdate: @hr_config_initial.userupdate }
    end

    assert_redirected_to hr_config_initial_path(assigns(:hr_config_initial))
  end

  test "should show hr_config_initial" do
    get :show, id: @hr_config_initial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_initial
    assert_response :success
  end

  test "should update hr_config_initial" do
    patch :update, id: @hr_config_initial, hr_config_initial: { code: @hr_config_initial.code, description: @hr_config_initial.description, khdescription: @hr_config_initial.khdescription, khtitle: @hr_config_initial.khtitle, title: @hr_config_initial.title, usercreate: @hr_config_initial.usercreate, userupdate: @hr_config_initial.userupdate }
    assert_redirected_to hr_config_initial_path(assigns(:hr_config_initial))
  end

  test "should destroy hr_config_initial" do
    assert_difference('Hr::Config::Initial.count', -1) do
      delete :destroy, id: @hr_config_initial
    end

    assert_redirected_to hr_config_initials_path
  end
end
