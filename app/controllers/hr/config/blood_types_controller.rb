class Hr::Config::BloodTypesController < ApplicationController
  before_action :set_hr_config_blood_type, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/blood_types
  # GET /hr/config/blood_types.json
  def index
    @hr_config_blood_types = Hr::Config::BloodType.all
  end

  # GET /hr/config/blood_types/1
  # GET /hr/config/blood_types/1.json
  def show
  end

  # GET /hr/config/blood_types/new
  def new
    @hr_config_blood_type = Hr::Config::BloodType.new
  end

  # GET /hr/config/blood_types/1/edit
  def edit
  end

  # POST /hr/config/blood_types
  # POST /hr/config/blood_types.json
  def create
    @hr_config_blood_type = Hr::Config::BloodType.new(hr_config_blood_type_params)

    respond_to do |format|
      if @hr_config_blood_type.save
        format.html { redirect_to @hr_config_blood_type, notice: 'Blood type was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_blood_type }
      else
        format.html { render :new }
        format.json { render json: @hr_config_blood_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/blood_types/1
  # PATCH/PUT /hr/config/blood_types/1.json
  def update
    respond_to do |format|
      if @hr_config_blood_type.update(hr_config_blood_type_params)
        format.html { redirect_to @hr_config_blood_type, notice: 'Blood type was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_blood_type }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_blood_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/blood_types/1
  # DELETE /hr/config/blood_types/1.json
  def destroy
    @hr_config_blood_type.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_blood_types_url, notice: 'Blood type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_blood_type
      @hr_config_blood_type = Hr::Config::BloodType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_blood_type_params
      params.require(:hr_config_blood_type).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
