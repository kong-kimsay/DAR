require 'test_helper'

class Hr::Config::DivisionsControllerTest < ActionController::TestCase
  setup do
    @hr_config_division = hr_config_divisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_divisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_division" do
    assert_difference('Hr::Config::Division.count') do
      post :create, hr_config_division: { code: @hr_config_division.code, description: @hr_config_division.description, khdescription: @hr_config_division.khdescription, khtitle: @hr_config_division.khtitle, title: @hr_config_division.title, usercreate: @hr_config_division.usercreate, userupdate: @hr_config_division.userupdate }
    end

    assert_redirected_to hr_config_division_path(assigns(:hr_config_division))
  end

  test "should show hr_config_division" do
    get :show, id: @hr_config_division
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_division
    assert_response :success
  end

  test "should update hr_config_division" do
    patch :update, id: @hr_config_division, hr_config_division: { code: @hr_config_division.code, description: @hr_config_division.description, khdescription: @hr_config_division.khdescription, khtitle: @hr_config_division.khtitle, title: @hr_config_division.title, usercreate: @hr_config_division.usercreate, userupdate: @hr_config_division.userupdate }
    assert_redirected_to hr_config_division_path(assigns(:hr_config_division))
  end

  test "should destroy hr_config_division" do
    assert_difference('Hr::Config::Division.count', -1) do
      delete :destroy, id: @hr_config_division
    end

    assert_redirected_to hr_config_divisions_path
  end
end
