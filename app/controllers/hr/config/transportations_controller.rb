class Hr::Config::TransportationsController < ApplicationController
  before_action :set_hr_config_transportation, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/transportations
  # GET /hr/config/transportations.json
  def index
    @hr_config_transportations = Hr::Config::Transportation.all
  end

  # GET /hr/config/transportations/1
  # GET /hr/config/transportations/1.json
  def show
  end

  # GET /hr/config/transportations/new
  def new
    @hr_config_transportation = Hr::Config::Transportation.new
  end

  # GET /hr/config/transportations/1/edit
  def edit
  end

  # POST /hr/config/transportations
  # POST /hr/config/transportations.json
  def create
    @hr_config_transportation = Hr::Config::Transportation.new(hr_config_transportation_params)

    respond_to do |format|
      if @hr_config_transportation.save
        format.html { redirect_to @hr_config_transportation, notice: 'Transportation was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_transportation }
      else
        format.html { render :new }
        format.json { render json: @hr_config_transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/transportations/1
  # PATCH/PUT /hr/config/transportations/1.json
  def update
    respond_to do |format|
      if @hr_config_transportation.update(hr_config_transportation_params)
        format.html { redirect_to @hr_config_transportation, notice: 'Transportation was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_transportation }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/transportations/1
  # DELETE /hr/config/transportations/1.json
  def destroy
    @hr_config_transportation.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_transportations_url, notice: 'Transportation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_transportation
      @hr_config_transportation = Hr::Config::Transportation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_transportation_params
      params.require(:hr_config_transportation).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
