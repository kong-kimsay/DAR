class Hr::Config::DepartmentsController < ApplicationController
  before_action :set_hr_config_department, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/departments
  # GET /hr/config/departments.json
  def index
    @hr_config_departments = Hr::Config::Department.all
  end

  # GET /hr/config/departments/1
  # GET /hr/config/departments/1.json
  def show
  end

  # GET /hr/config/departments/new
  def new
    @hr_config_department = Hr::Config::Department.new
  end

  # GET /hr/config/departments/1/edit
  def edit
  end

  # POST /hr/config/departments
  # POST /hr/config/departments.json
  def create
    @hr_config_department = Hr::Config::Department.new(hr_config_department_params)

    respond_to do |format|
      if @hr_config_department.save
        format.html { redirect_to @hr_config_department, notice: 'បន្ថែមទទួលបានជោគជ័យ'}
        format.json { render :show, status: :created, location: @hr_config_department }
      else
        format.html { render :new }
        format.json { render json: @hr_config_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/departments/1
  # PATCH/PUT /hr/config/departments/1.json
  def update
    respond_to do |format|
      if @hr_config_department.update(hr_config_department_params)
        format.html { redirect_to @hr_config_department, notice: 'បន្ទាន់សម័យទទួលបានជោគជ័យ' }
        format.json { render :show, status: :ok, location: @hr_config_department }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/departments/1
  # DELETE /hr/config/departments/1.json
  def destroy
    @hr_config_department.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_departments_url, notice: 'លុបទទួលបានជោគជ័យ' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_department
      @hr_config_department = Hr::Config::Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_department_params
      params.require(:hr_config_department).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
