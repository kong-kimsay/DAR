class Hr::Config::EducationsController < ApplicationController
  before_action :set_hr_config_education, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/educations
  # GET /hr/config/educations.json
  def index
    @hr_config_educations = Hr::Config::Education.all
  end

  # GET /hr/config/educations/1
  # GET /hr/config/educations/1.json
  def show
  end

  # GET /hr/config/educations/new
  def new
    @hr_config_education = Hr::Config::Education.new
  end

  # GET /hr/config/educations/1/edit
  def edit
  end

  # POST /hr/config/educations
  # POST /hr/config/educations.json
  def create
    @hr_config_education = Hr::Config::Education.new(hr_config_education_params)

    respond_to do |format|
      if @hr_config_education.save
        format.html { redirect_to @hr_config_education, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_education }
      else
        format.html { render :new }
        format.json { render json: @hr_config_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/educations/1
  # PATCH/PUT /hr/config/educations/1.json
  def update
    respond_to do |format|
      if @hr_config_education.update(hr_config_education_params)
        format.html { redirect_to @hr_config_education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_education }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/educations/1
  # DELETE /hr/config/educations/1.json
  def destroy
    @hr_config_education.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_education
      @hr_config_education = Hr::Config::Education.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_education_params
      params.require(:hr_config_education).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
