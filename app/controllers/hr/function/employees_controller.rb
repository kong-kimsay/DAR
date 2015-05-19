class Hr::Function::EmployeesController < ApplicationController
  before_action :set_hr_function_employee, only: [:show, :edit, :update, :destroy]

  # GET /hr/function/employees
  # GET /hr/function/employees.json
  def index
    @hr_function_employees = Hr::Function::Employee.all
  end

  # GET /hr/function/employees/1
  # GET /hr/function/employees/1.json
  def show
  end

  # GET /hr/function/employees/new
  def new
    @hr_function_employee = Hr::Function::Employee.new
    @hr_config_country = Hr::Config::Country.select("id,code,title,khtitle")
    @hr_config_nation = Hr::Config::Nation.select("id,code,title,khtitle")
    @hr_config_religion = Hr::Config::Religion.select("id,code,title,khtitle")
    @hr_config_transportation = Hr::Config::Transportation.select("id,code,title,khtitle")
    @hr_config_initial = Hr::Config::Initial.select("id,code,title,khtitle")
    @hr_config_marital = Hr::Config::Marital.select("id,code,title,khtitle")
    @hr_config_bloodtype = Hr::Config::BloodType.select("id,code,title,khtitle")

  end

  # GET /hr/function/employees/1/edit
  def edit
    @hr_config_country = Hr::Config::Country.select("id,code,title,khtitle")
    @hr_config_nation = Hr::Config::Nation.select("id,code,title,khtitle")
    @hr_config_religion = Hr::Config::Religion.select("id,code,title,khtitle")
    @hr_config_transportation = Hr::Config::Transportation.select("id,code,title,khtitle")
    @hr_config_initial = Hr::Config::Initial.select("id,code,title,khtitle")
    @hr_config_marital = Hr::Config::Marital.select("id,code,title,khtitle")
    @hr_config_bloodtype = Hr::Config::BloodType.select("id,code,title,khtitle")
  end

  # POST /hr/function/employees
  # POST /hr/function/employees.json
  def create
    @hr_function_employee = Hr::Function::Employee.new(hr_function_employee_params)

    respond_to do |format|
      if @hr_function_employee.save
        format.html { redirect_to @hr_function_employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @hr_function_employee }
      else
        format.html { render :new }
        format.json { render json: @hr_function_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/function/employees/1
  # PATCH/PUT /hr/function/employees/1.json
  def update
    respond_to do |format|
      if @hr_function_employee.update(hr_function_employee_params)
        format.html { redirect_to @hr_function_employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_function_employee }
      else
        format.html { render :edit }
        format.json { render json: @hr_function_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/function/employees/1
  # DELETE /hr/function/employees/1.json
  def destroy
    @hr_function_employee.destroy
    respond_to do |format|
      format.html { redirect_to hr_function_employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def country
    "#{@hr_cofig_country.khtitle} | #{@hr_cofig_country.title}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_function_employee
      @hr_function_employee = Hr::Function::Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_function_employee_params
      params.require(:hr_function_employee).permit(:code, :firstname, :lastname, :khfirstname, :khlastname,:Country_id,:Nation_id, :image)
    end
end
