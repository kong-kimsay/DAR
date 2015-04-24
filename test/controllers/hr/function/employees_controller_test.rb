require 'test_helper'

class Hr::Function::EmployeesControllerTest < ActionController::TestCase
  setup do
    @hr_function_employee = hr_function_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_function_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_function_employee" do
    assert_difference('Hr::Function::Employee.count') do
      post :create, hr_function_employee: { code: @hr_function_employee.code, firstname: @hr_function_employee.firstname, khfirstname: @hr_function_employee.khfirstname, khlastname: @hr_function_employee.khlastname, lastname: @hr_function_employee.lastname }
    end

    assert_redirected_to hr_function_employee_path(assigns(:hr_function_employee))
  end

  test "should show hr_function_employee" do
    get :show, id: @hr_function_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_function_employee
    assert_response :success
  end

  test "should update hr_function_employee" do
    patch :update, id: @hr_function_employee, hr_function_employee: { code: @hr_function_employee.code, firstname: @hr_function_employee.firstname, khfirstname: @hr_function_employee.khfirstname, khlastname: @hr_function_employee.khlastname, lastname: @hr_function_employee.lastname }
    assert_redirected_to hr_function_employee_path(assigns(:hr_function_employee))
  end

  test "should destroy hr_function_employee" do
    assert_difference('Hr::Function::Employee.count', -1) do
      delete :destroy, id: @hr_function_employee
    end

    assert_redirected_to hr_function_employees_path
  end
end
