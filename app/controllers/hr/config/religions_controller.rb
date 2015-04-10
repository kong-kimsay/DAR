class Hr::Config::ReligionsController < ApplicationController
  before_action :set_hr_config_religion, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/religions
  # GET /hr/config/religions.json
  def index
    @hr_config_religions = Hr::Config::Religion.all
  end

  # GET /hr/config/religions/1
  # GET /hr/config/religions/1.json
  def show
  end

  # GET /hr/config/religions/new
  def new
    @hr_config_religion = Hr::Config::Religion.new
  end

  # GET /hr/config/religions/1/edit
  def edit
  end

  # POST /hr/config/religions
  # POST /hr/config/religions.json
  def create
    @hr_config_religion = Hr::Config::Religion.new(hr_config_religion_params)

    respond_to do |format|
      if @hr_config_religion.save
        format.html { redirect_to @hr_config_religion, notice: 'Religion was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_religion }
      else
        format.html { render :new }
        format.json { render json: @hr_config_religion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/religions/1
  # PATCH/PUT /hr/config/religions/1.json
  def update
    respond_to do |format|
      if @hr_config_religion.update(hr_config_religion_params)
        format.html { redirect_to @hr_config_religion, notice: 'Religion was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_religion }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_religion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/religions/1
  # DELETE /hr/config/religions/1.json
  def destroy
    @hr_config_religion.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_religions_url, notice: 'Religion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_religion
      @hr_config_religion = Hr::Config::Religion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_religion_params
      params.require(:hr_config_religion).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
