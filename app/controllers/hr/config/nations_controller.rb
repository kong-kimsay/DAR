class Hr::Config::NationsController < ApplicationController
  before_action :set_hr_config_nation, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/nations
  # GET /hr/config/nations.json
  def index
    @hr_config_nations = Hr::Config::Nation.all
  end

  # GET /hr/config/nations/1
  # GET /hr/config/nations/1.json
  def show
  end

  # GET /hr/config/nations/new
  def new
    @hr_config_nation = Hr::Config::Nation.new
  end

  # GET /hr/config/nations/1/edit
  def edit
  end

  # POST /hr/config/nations
  # POST /hr/config/nations.json
  def create
    @hr_config_nation = Hr::Config::Nation.new(hr_config_nation_params)

    respond_to do |format|
      if @hr_config_nation.save
        format.html { redirect_to @hr_config_nation, notice: 'Nation was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_nation }
      else
        format.html { render :new }
        format.json { render json: @hr_config_nation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/nations/1
  # PATCH/PUT /hr/config/nations/1.json
  def update
    respond_to do |format|
      if @hr_config_nation.update(hr_config_nation_params)
        format.html { redirect_to @hr_config_nation, notice: 'Nation was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_nation }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_nation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/nations/1
  # DELETE /hr/config/nations/1.json
  def destroy
    @hr_config_nation.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_nations_url, notice: 'Nation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_nation
      @hr_config_nation = Hr::Config::Nation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_nation_params
      params.require(:hr_config_nation).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
