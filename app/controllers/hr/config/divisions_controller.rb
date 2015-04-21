class Hr::Config::DivisionsController < ApplicationController
  before_action :set_hr_config_division, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/divisions
  # GET /hr/config/divisions.json
  def index
    @hr_config_divisions = Hr::Config::Division.all
  end

  # GET /hr/config/divisions/1
  # GET /hr/config/divisions/1.json
  def show
  end

  # GET /hr/config/divisions/new
  def new
    @hr_config_division = Hr::Config::Division.new
  end

  # GET /hr/config/divisions/1/edit
  def edit
  end

  # POST /hr/config/divisions
  # POST /hr/config/divisions.json
  def create
    @hr_config_division = Hr::Config::Division.new(hr_config_division_params)

    respond_to do |format|
      if @hr_config_division.save
        format.html { redirect_to @hr_config_division, notice: 'បន្ថែមទទួលបានជោគជ័យ' }
        format.json { render :show, status: :created, location: @hr_config_division }
      else
        format.html { render :new }
        format.json { render json: @hr_config_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/divisions/1
  # PATCH/PUT /hr/config/divisions/1.json
  def update
    respond_to do |format|
      if @hr_config_division.update(hr_config_division_params)
        format.html { redirect_to @hr_config_division, notice: 'បន្ទាន់សម័យទទួលបានជោគជ័យ' }
        format.json { render :show, status: :ok, location: @hr_config_division }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/divisions/1
  # DELETE /hr/config/divisions/1.json
  def destroy
    @hr_config_division.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_divisions_url, notice: 'លុបទទួលបានជោគជ័យ'  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_division
      @hr_config_division = Hr::Config::Division.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_division_params
      params.require(:hr_config_division).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
