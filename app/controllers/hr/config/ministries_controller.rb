class Hr::Config::MinistriesController < ApplicationController
  before_action :set_hr_config_ministry, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/ministries
  # GET /hr/config/ministries.json
  def index
    @hr_config_ministries = Hr::Config::Ministry.all
  end

  # GET /hr/config/ministries/1
  # GET /hr/config/ministries/1.json
  def show
  end

  # GET /hr/config/ministries/new
  def new
    @hr_config_ministry = Hr::Config::Ministry.new
  end

  # GET /hr/config/ministries/1/edit
  def edit
  end

  # POST /hr/config/ministries
  # POST /hr/config/ministries.json
  def create
    @hr_config_ministry = Hr::Config::Ministry.new(hr_config_ministry_params)

    respond_to do |format|
      if @hr_config_ministry.save
        format.html { redirect_to @hr_config_ministry, notice: 'បន្ថែមទទួលបានជោគ' }
        format.json { render :show, status: :created, location: @hr_config_ministry }
      else
        format.html { render :new }
        format.json { render json: @hr_config_ministry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/ministries/1
  # PATCH/PUT /hr/config/ministries/1.json
  def update
    respond_to do |format|
      if @hr_config_ministry.update(hr_config_ministry_params)
        format.html { redirect_to @hr_config_ministry, notice: 'បន្ទាន់សម័យទទួលបានជោគជ័យ' }
        format.json { render :show, status: :ok, location: @hr_config_ministry }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_ministry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/ministries/1
  # DELETE /hr/config/ministries/1.json
  def destroy
    @hr_config_ministry.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_ministries_url,notice: 'លុបទទួលបានជោគជ័យ'  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_ministry
      @hr_config_ministry = Hr::Config::Ministry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_ministry_params
      params.require(:hr_config_ministry).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
