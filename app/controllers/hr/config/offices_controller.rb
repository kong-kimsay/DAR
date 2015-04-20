class Hr::Config::OfficesController < ApplicationController
  before_action :set_hr_config_office, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/offices
  # GET /hr/config/offices.json
  def index
    @hr_config_offices = Hr::Config::Office.all
  end

  # GET /hr/config/offices/1
  # GET /hr/config/offices/1.json
  def show
  end

  # GET /hr/config/offices/new
  def new
    @hr_config_office = Hr::Config::Office.new
  end

  # GET /hr/config/offices/1/edit
  def edit
  end

  # POST /hr/config/offices
  # POST /hr/config/offices.json
  def create
    @hr_config_office = Hr::Config::Office.new(hr_config_office_params)

    respond_to do |format|
      if @hr_config_office.save
        format.html { redirect_to @hr_config_office, notice: 'បន្ថែមទទួលបានជោគ' }
        format.json { render :show, status: :created, location: @hr_config_office }
      else
        format.html { render :new }
        format.json { render json: @hr_config_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/offices/1
  # PATCH/PUT /hr/config/offices/1.json
  def update
    respond_to do |format|
      if @hr_config_office.update(hr_config_office_params)
        format.html { redirect_to @hr_config_office, notice: 'បន្ទាន់សម័យទទួលបានជោគជ័យ' }
        format.json { render :show, status: :ok, location: @hr_config_office }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/offices/1
  # DELETE /hr/config/offices/1.json
  def destroy
    @hr_config_office.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_offices_url, notice: 'លុបទទួលបានជោគជ័យ' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_office
      @hr_config_office = Hr::Config::Office.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_office_params
      params.require(:hr_config_office).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
