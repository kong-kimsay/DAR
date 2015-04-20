require 'test_helper'

class Hr::Config::CertificationsControllerTest < ActionController::TestCase
  setup do
    @hr_config_certification = hr_config_certifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_certifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_certification" do
    assert_difference('Hr::Config::Certification.count') do
      post :create, hr_config_certification: { code: @hr_config_certification.code, description: @hr_config_certification.description, khdescription: @hr_config_certification.khdescription, khtitle: @hr_config_certification.khtitle, title: @hr_config_certification.title, usercreate: @hr_config_certification.usercreate, userupdate: @hr_config_certification.userupdate }
    end

    assert_redirected_to hr_config_certification_path(assigns(:hr_config_certification))
  end

  test "should show hr_config_certification" do
    get :show, id: @hr_config_certification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_certification
    assert_response :success
  end

  test "should update hr_config_certification" do
    patch :update, id: @hr_config_certification, hr_config_certification: { code: @hr_config_certification.code, description: @hr_config_certification.description, khdescription: @hr_config_certification.khdescription, khtitle: @hr_config_certification.khtitle, title: @hr_config_certification.title, usercreate: @hr_config_certification.usercreate, userupdate: @hr_config_certification.userupdate }
    assert_redirected_to hr_config_certification_path(assigns(:hr_config_certification))
  end

  test "should destroy hr_config_certification" do
    assert_difference('Hr::Config::Certification.count', -1) do
      delete :destroy, id: @hr_config_certification
    end

    assert_redirected_to hr_config_certifications_path
  end
end
