require 'test_helper'

class Hr::Config::ContractsControllerTest < ActionController::TestCase
  setup do
    @hr_config_contract = hr_config_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_config_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_config_contract" do
    assert_difference('Hr::Config::Contract.count') do
      post :create, hr_config_contract: { code: @hr_config_contract.code, description: @hr_config_contract.description, khdescription: @hr_config_contract.khdescription, khtitle: @hr_config_contract.khtitle, title: @hr_config_contract.title, usercreate: @hr_config_contract.usercreate, userupdate: @hr_config_contract.userupdate }
    end

    assert_redirected_to hr_config_contract_path(assigns(:hr_config_contract))
  end

  test "should show hr_config_contract" do
    get :show, id: @hr_config_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_config_contract
    assert_response :success
  end

  test "should update hr_config_contract" do
    patch :update, id: @hr_config_contract, hr_config_contract: { code: @hr_config_contract.code, description: @hr_config_contract.description, khdescription: @hr_config_contract.khdescription, khtitle: @hr_config_contract.khtitle, title: @hr_config_contract.title, usercreate: @hr_config_contract.usercreate, userupdate: @hr_config_contract.userupdate }
    assert_redirected_to hr_config_contract_path(assigns(:hr_config_contract))
  end

  test "should destroy hr_config_contract" do
    assert_difference('Hr::Config::Contract.count', -1) do
      delete :destroy, id: @hr_config_contract
    end

    assert_redirected_to hr_config_contracts_path
  end
end
