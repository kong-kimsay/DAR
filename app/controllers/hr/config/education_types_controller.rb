class Hr::Config::EducationTypesController < ApplicationController
  before_action :set_hr_config_education_type, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/education_types
  # GET /hr/config/education_types.json
  def index
    @hr_config_education_types = Hr::Config::EducationType.all
  end

  # GET /hr/config/education_types/1
  # GET /hr/config/education_types/1.json
  def show
  end

  # GET /hr/config/education_types/new
  def new
    @hr_config_education_type = Hr::Config::EducationType.new
  end

  # GET /hr/config/education_types/1/edit
  def edit
  end

  # POST /hr/config/education_types
  # POST /hr/config/education_types.json
  def create
    @hr_config_education_type = Hr::Config::EducationType.new(hr_config_education_type_params)

    respond_to do |format|
      if @hr_config_education_type.save
        format.html { redirect_to @hr_config_education_type, notice: 'Education type was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_education_type }
      else
        format.html { render :new }
        format.json { render json: @hr_config_education_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/education_types/1
  # PATCH/PUT /hr/config/education_types/1.json
  def update
    respond_to do |format|
      if @hr_config_education_type.update(hr_config_education_type_params)
        format.html { redirect_to @hr_config_education_type, notice: 'Education type was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_education_type }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_education_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/education_types/1
  # DELETE /hr/config/education_types/1.json
  def destroy
    @hr_config_education_type.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_education_types_url, notice: 'Education type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_education_type
      @hr_config_education_type = Hr::Config::EducationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_education_type_params
      params.require(:hr_config_education_type).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
