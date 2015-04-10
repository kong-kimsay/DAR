require 'test_helper'

class Hr::Config::ReligionsControllerTest < ActionController::TestCase
  setup do
    @hr_config_religion = hr_config_religions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_religions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_religion" do
    assert_difference('Hr::Config::Religion.count') do
      post :create, hr_config_religion: { code: @hr_config_religion.code, description: @hr_config_religion.description, khdescription: @hr_config_religion.khdescription, khtitle: @hr_config_religion.khtitle, title: @hr_config_religion.title, usercreate: @hr_config_religion.usercreate, userupdate: @hr_config_religion.userupdate }
    end

    assert_redirected_to hr_config_religion_path(assigns(:hr_config_religion))
  end

  test "should show hr_config_religion" do
    get :show, id: @hr_config_religion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_religion
    assert_response :success
  end

  test "should update hr_config_religion" do
    patch :update, id: @hr_config_religion, hr_config_religion: { code: @hr_config_religion.code, description: @hr_config_religion.description, khdescription: @hr_config_religion.khdescription, khtitle: @hr_config_religion.khtitle, title: @hr_config_religion.title, usercreate: @hr_config_religion.usercreate, userupdate: @hr_config_religion.userupdate }
    assert_redirected_to hr_config_religion_path(assigns(:hr_config_religion))
  end

  test "should destroy hr_config_religion" do
    assert_difference('Hr::Config::Religion.count', -1) do
      delete :destroy, id: @hr_config_religion
    end

    assert_redirected_to hr_config_religions_path
  end
end
