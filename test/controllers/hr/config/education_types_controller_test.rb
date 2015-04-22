require 'test_helper'

class Hr::Config::EducationTypesControllerTest < ActionController::TestCase
  setup do
    @hr_config_education_type = hr_config_education_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_education_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_education_type" do
    assert_difference('Hr::Config::EducationType.count') do
      post :create, hr_config_education_type: { code: @hr_config_education_type.code, description: @hr_config_education_type.description, khdescription: @hr_config_education_type.khdescription, khtitle: @hr_config_education_type.khtitle, title: @hr_config_education_type.title, usercreate: @hr_config_education_type.usercreate, userupdate: @hr_config_education_type.userupdate }
    end

    assert_redirected_to hr_config_education_type_path(assigns(:hr_config_education_type))
  end

  test "should show hr_config_education_type" do
    get :show, id: @hr_config_education_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_education_type
    assert_response :success
  end

  test "should update hr_config_education_type" do
    patch :update, id: @hr_config_education_type, hr_config_education_type: { code: @hr_config_education_type.code, description: @hr_config_education_type.description, khdescription: @hr_config_education_type.khdescription, khtitle: @hr_config_education_type.khtitle, title: @hr_config_education_type.title, usercreate: @hr_config_education_type.usercreate, userupdate: @hr_config_education_type.userupdate }
    assert_redirected_to hr_config_education_type_path(assigns(:hr_config_education_type))
  end

  test "should destroy hr_config_education_type" do
    assert_difference('Hr::Config::EducationType.count', -1) do
      delete :destroy, id: @hr_config_education_type
    end

    assert_redirected_to hr_config_education_types_path
  end
end
