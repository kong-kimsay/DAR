require 'test_helper'

class Hr::Config::OfficesControllerTest < ActionController::TestCase
  setup do
    @hr_config_office = hr_config_offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_office" do
    assert_difference('Hr::Config::Office.count') do
      post :create, hr_config_office: { code: @hr_config_office.code, description: @hr_config_office.description, khdescription: @hr_config_office.khdescription, khtitle: @hr_config_office.khtitle, title: @hr_config_office.title, usercreate: @hr_config_office.usercreate, userupdate: @hr_config_office.userupdate }
    end

    assert_redirected_to hr_config_office_path(assigns(:hr_config_office))
  end

  test "should show hr_config_office" do
    get :show, id: @hr_config_office
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_office
    assert_response :success
  end

  test "should update hr_config_office" do
    patch :update, id: @hr_config_office, hr_config_office: { code: @hr_config_office.code, description: @hr_config_office.description, khdescription: @hr_config_office.khdescription, khtitle: @hr_config_office.khtitle, title: @hr_config_office.title, usercreate: @hr_config_office.usercreate, userupdate: @hr_config_office.userupdate }
    assert_redirected_to hr_config_office_path(assigns(:hr_config_office))
  end

  test "should destroy hr_config_office" do
    assert_difference('Hr::Config::Office.count', -1) do
      delete :destroy, id: @hr_config_office
    end

    assert_redirected_to hr_config_offices_path
  end
end
