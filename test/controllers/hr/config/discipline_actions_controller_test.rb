require 'test_helper'

class Hr::Config::DisciplineActionsControllerTest < ActionController::TestCase
  setup do
    @hr_config_discipline_action = hr_config_discipline_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_discipline_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_discipline_action" do
    assert_difference('Hr::Config::DisciplineAction.count') do
      post :create, hr_config_discipline_action: { code: @hr_config_discipline_action.code, description: @hr_config_discipline_action.description, khdescription: @hr_config_discipline_action.khdescription, khtitle: @hr_config_discipline_action.khtitle, title: @hr_config_discipline_action.title, usercreate: @hr_config_discipline_action.usercreate, userupdate: @hr_config_discipline_action.userupdate }
    end

    assert_redirected_to hr_config_discipline_action_path(assigns(:hr_config_discipline_action))
  end

  test "should show hr_config_discipline_action" do
    get :show, id: @hr_config_discipline_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_discipline_action
    assert_response :success
  end

  test "should update hr_config_discipline_action" do
    patch :update, id: @hr_config_discipline_action, hr_config_discipline_action: { code: @hr_config_discipline_action.code, description: @hr_config_discipline_action.description, khdescription: @hr_config_discipline_action.khdescription, khtitle: @hr_config_discipline_action.khtitle, title: @hr_config_discipline_action.title, usercreate: @hr_config_discipline_action.usercreate, userupdate: @hr_config_discipline_action.userupdate }
    assert_redirected_to hr_config_discipline_action_path(assigns(:hr_config_discipline_action))
  end

  test "should destroy hr_config_discipline_action" do
    assert_difference('Hr::Config::DisciplineAction.count', -1) do
      delete :destroy, id: @hr_config_discipline_action
    end

    assert_redirected_to hr_config_discipline_actions_path
  end
end
