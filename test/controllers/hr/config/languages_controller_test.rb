require 'test_helper'

class Hr::Config::LanguagesControllerTest < ActionController::TestCase
  setup do
    @hr_config_language = hr_config_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_language" do
    assert_difference('Hr::Config::Language.count') do
      post :create, hr_config_language: { code: @hr_config_language.code, description: @hr_config_language.description, khdescription: @hr_config_language.khdescription, khtitle: @hr_config_language.khtitle, title: @hr_config_language.title, usercreate: @hr_config_language.usercreate, userupdate: @hr_config_language.userupdate }
    end

    assert_redirected_to hr_config_language_path(assigns(:hr_config_language))
  end

  test "should show hr_config_language" do
    get :show, id: @hr_config_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_language
    assert_response :success
  end

  test "should update hr_config_language" do
    patch :update, id: @hr_config_language, hr_config_language: { code: @hr_config_language.code, description: @hr_config_language.description, khdescription: @hr_config_language.khdescription, khtitle: @hr_config_language.khtitle, title: @hr_config_language.title, usercreate: @hr_config_language.usercreate, userupdate: @hr_config_language.userupdate }
    assert_redirected_to hr_config_language_path(assigns(:hr_config_language))
  end

  test "should destroy hr_config_language" do
    assert_difference('Hr::Config::Language.count', -1) do
      delete :destroy, id: @hr_config_language
    end

    assert_redirected_to hr_config_languages_path
  end
end
