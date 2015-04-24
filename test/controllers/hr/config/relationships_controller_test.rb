require 'test_helper'

class Hr::Config::RelationshipsControllerTest < ActionController::TestCase
  setup do
    @hr_config_relationship = hr_config_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_relationship" do
    assert_difference('Hr::Config::Relationship.count') do
      post :create, hr_config_relationship: { code: @hr_config_relationship.code, description: @hr_config_relationship.description, khdescription: @hr_config_relationship.khdescription, khtitle: @hr_config_relationship.khtitle, title: @hr_config_relationship.title, usercreate: @hr_config_relationship.usercreate, userupdate: @hr_config_relationship.userupdate }
    end

    assert_redirected_to hr_config_relationship_path(assigns(:hr_config_relationship))
  end

  test "should show hr_config_relationship" do
    get :show, id: @hr_config_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_relationship
    assert_response :success
  end

  test "should update hr_config_relationship" do
    patch :update, id: @hr_config_relationship, hr_config_relationship: { code: @hr_config_relationship.code, description: @hr_config_relationship.description, khdescription: @hr_config_relationship.khdescription, khtitle: @hr_config_relationship.khtitle, title: @hr_config_relationship.title, usercreate: @hr_config_relationship.usercreate, userupdate: @hr_config_relationship.userupdate }
    assert_redirected_to hr_config_relationship_path(assigns(:hr_config_relationship))
  end

  test "should destroy hr_config_relationship" do
    assert_difference('Hr::Config::Relationship.count', -1) do
      delete :destroy, id: @hr_config_relationship
    end

    assert_redirected_to hr_config_relationships_path
  end
end
