class Hr::Config::CareercodesController < ApplicationController
  before_action :set_hr_config_careercode, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/careercodes
  # GET /hr/config/careercodes.json
  def index
    @hr_config_careercodes = Hr::Config::Careercode.all
  end

  # GET /hr/config/careercodes/1
  # GET /hr/config/careercodes/1.json
  def show
  end

  # GET /hr/config/careercodes/new
  def new
    @hr_config_careercode = Hr::Config::Careercode.new
  end

  # GET /hr/config/careercodes/1/edit
  def edit
  end

  # POST /hr/config/careercodes
  # POST /hr/config/careercodes.json
  def create
    @hr_config_careercode = Hr::Config::Careercode.new(hr_config_careercode_params)

    respond_to do |format|
      if @hr_config_careercode.save
        format.html { redirect_to @hr_config_careercode, notice: 'Careercode was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_careercode }
      else
        format.html { render :new }
        format.json { render json: @hr_config_careercode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/careercodes/1
  # PATCH/PUT /hr/config/careercodes/1.json
  def update
    respond_to do |format|
      if @hr_config_careercode.update(hr_config_careercode_params)
        format.html { redirect_to @hr_config_careercode, notice: 'Careercode was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_careercode }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_careercode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/careercodes/1
  # DELETE /hr/config/careercodes/1.json
  def destroy
    @hr_config_careercode.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_careercodes_url, notice: 'Careercode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_careercode
      @hr_config_careercode = Hr::Config::Careercode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_careercode_params
      params.require(:hr_config_careercode).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
