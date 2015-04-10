require 'test_helper'

class Hr::Config::CountiesControllerTest < ActionController::TestCase
  setup do
    @hr_config_county = hr_config_counties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_counties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_county" do
    assert_difference('Hr::Config::County.count') do
      post :create, hr_config_county: { code: @hr_config_county.code, datecreate: @hr_config_county.datecreate, dateupdate: @hr_config_county.dateupdate, descritpion: @hr_config_county.descritpion, khdescription: @hr_config_county.khdescription, khtitle: @hr_config_county.khtitle, title: @hr_config_county.title, useradd: @hr_config_county.useradd, userupdate: @hr_config_county.userupdate }
    end

    assert_redirected_to hr_config_county_path(assigns(:hr_config_county))
  end

  test "should show hr_config_county" do
    get :show, id: @hr_config_county
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_county
    assert_response :success
  end

  test "should update hr_config_county" do
    patch :update, id: @hr_config_county, hr_config_county: { code: @hr_config_county.code, datecreate: @hr_config_county.datecreate, dateupdate: @hr_config_county.dateupdate, descritpion: @hr_config_county.descritpion, khdescription: @hr_config_county.khdescription, khtitle: @hr_config_county.khtitle, title: @hr_config_county.title, useradd: @hr_config_county.useradd, userupdate: @hr_config_county.userupdate }
    assert_redirected_to hr_config_county_path(assigns(:hr_config_county))
  end

  test "should destroy hr_config_county" do
    assert_difference('Hr::Config::County.count', -1) do
      delete :destroy, id: @hr_config_county
    end

    assert_redirected_to hr_config_counties_path
  end
end
