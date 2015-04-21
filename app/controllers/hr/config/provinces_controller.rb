class Hr::Config::ProvincesController < ApplicationController
  before_action :set_hr_config_province, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/provinces
  # GET /hr/config/provinces.json
  def index
    @hr_config_provinces = Hr::Config::Province.all
  end

  # GET /hr/config/provinces/1
  # GET /hr/config/provinces/1.json
  def show
  end

  # GET /hr/config/provinces/new
  def new
    @hr_config_province = Hr::Config::Province.new
  end

  # GET /hr/config/provinces/1/edit
  def edit
  end

  # POST /hr/config/provinces
  # POST /hr/config/provinces.json
  def create
    @hr_config_province = Hr::Config::Province.new(hr_config_province_params)

    respond_to do |format|
      if @hr_config_province.save
        format.html { redirect_to @hr_config_province, notice: 'បន្ថែមទទួលបានជោគ' }
        format.json { render :show, status: :created, location: @hr_config_province }
      else
        format.html { render :new }
        format.json { render json: @hr_config_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/provinces/1
  # PATCH/PUT /hr/config/provinces/1.json
  def update
    respond_to do |format|
      if @hr_config_province.update(hr_config_province_params)
        format.html { redirect_to @hr_config_province, notice: 'បន្ទាន់សម័យទទួលបានជោគជ័យ' }
        format.json { render :show, status: :ok, location: @hr_config_province }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/provinces/1
  # DELETE /hr/config/provinces/1.json
  def destroy
    @hr_config_province.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_provinces_url, notice: 'លុបទទួលបានជោគជ័យ'  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_province
      @hr_config_province = Hr::Config::Province.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_province_params
      params.require(:hr_config_province).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
