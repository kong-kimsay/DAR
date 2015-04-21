require 'test_helper'

class Hr::Config::DepartmentsControllerTest < ActionController::TestCase
  setup do
    @hr_config_department = hr_config_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_department" do
    assert_difference('Hr::Config::Department.count') do
      post :create, hr_config_department: { code: @hr_config_department.code, description: @hr_config_department.description, khdescription: @hr_config_department.khdescription, khtitle: @hr_config_department.khtitle, title: @hr_config_department.title, usercreate: @hr_config_department.usercreate, userupdate: @hr_config_department.userupdate }
    end

    assert_redirected_to hr_config_department_path(assigns(:hr_config_department))
  end

  test "should show hr_config_department" do
    get :show, id: @hr_config_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_department
    assert_response :success
  end

  test "should update hr_config_department" do
    patch :update, id: @hr_config_department, hr_config_department: { code: @hr_config_department.code, description: @hr_config_department.description, khdescription: @hr_config_department.khdescription, khtitle: @hr_config_department.khtitle, title: @hr_config_department.title, usercreate: @hr_config_department.usercreate, userupdate: @hr_config_department.userupdate }
    assert_redirected_to hr_config_department_path(assigns(:hr_config_department))
  end

  test "should destroy hr_config_department" do
    assert_difference('Hr::Config::Department.count', -1) do
      delete :destroy, id: @hr_config_department
    end

    assert_redirected_to hr_config_departments_path
  end
end
