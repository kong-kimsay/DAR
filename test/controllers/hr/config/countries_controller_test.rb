require 'test_helper'

class Hr::Config::CountriesControllerTest < ActionController::TestCase
  setup do
    @hr_config_country = hr_config_countries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_country" do
    assert_difference('Hr::Config::Country.count') do
      post :create, hr_config_country: { code: @hr_config_country.code, description: @hr_config_country.description, khdescription: @hr_config_country.khdescription, khtitle: @hr_config_country.khtitle, title: @hr_config_country.title, usercreate: @hr_config_country.usercreate, userupdate: @hr_config_country.userupdate }
    end

    assert_redirected_to hr_config_country_path(assigns(:hr_config_country))
  end

  test "should show hr_config_country" do
    get :show, id: @hr_config_country
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_country
    assert_response :success
  end

  test "should update hr_config_country" do
    patch :update, id: @hr_config_country, hr_config_country: { code: @hr_config_country.code, description: @hr_config_country.description, khdescription: @hr_config_country.khdescription, khtitle: @hr_config_country.khtitle, title: @hr_config_country.title, usercreate: @hr_config_country.usercreate, userupdate: @hr_config_country.userupdate }
    assert_redirected_to hr_config_country_path(assigns(:hr_config_country))
  end

  test "should destroy hr_config_country" do
    assert_difference('Hr::Config::Country.count', -1) do
      delete :destroy, id: @hr_config_country
    end

    assert_redirected_to hr_config_countries_path
  end
end
