require 'test_helper'

class Hr::Config::EducationsControllerTest < ActionController::TestCase
  setup do
    @hr_config_education = hr_config_educations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_educations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_education" do
    assert_difference('Hr::Config::Education.count') do
      post :create, hr_config_education: { code: @hr_config_education.code, description: @hr_config_education.description, khdescription: @hr_config_education.khdescription, khtitle: @hr_config_education.khtitle, title: @hr_config_education.title, usercreate: @hr_config_education.usercreate, userupdate: @hr_config_education.userupdate }
    end

    assert_redirected_to hr_config_education_path(assigns(:hr_config_education))
  end

  test "should show hr_config_education" do
    get :show, id: @hr_config_education
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_education
    assert_response :success
  end

  test "should update hr_config_education" do
    patch :update, id: @hr_config_education, hr_config_education: { code: @hr_config_education.code, description: @hr_config_education.description, khdescription: @hr_config_education.khdescription, khtitle: @hr_config_education.khtitle, title: @hr_config_education.title, usercreate: @hr_config_education.usercreate, userupdate: @hr_config_education.userupdate }
    assert_redirected_to hr_config_education_path(assigns(:hr_config_education))
  end

  test "should destroy hr_config_education" do
    assert_difference('Hr::Config::Education.count', -1) do
      delete :destroy, id: @hr_config_education
    end

    assert_redirected_to hr_config_educations_path
  end
end
