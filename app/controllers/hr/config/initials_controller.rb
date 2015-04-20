class Hr::Config::InitialsController < ApplicationController
  before_action :set_hr_config_initial, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/initials
  # GET /hr/config/initials.json
  def index
    @hr_config_initials = Hr::Config::Initial.all
  end

  # GET /hr/config/initials/1
  # GET /hr/config/initials/1.json
  def show
  end

  # GET /hr/config/initials/new
  def new
    @hr_config_initial = Hr::Config::Initial.new
  end

  # GET /hr/config/initials/1/edit
  def edit
  end

  # POST /hr/config/initials
  # POST /hr/config/initials.json
  def create
    @hr_config_initial = Hr::Config::Initial.new(hr_config_initial_params)

    respond_to do |format|
      if @hr_config_initial.save
        format.html { redirect_to @hr_config_initial, notice: 'Initial was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_initial }
      else
        format.html { render :new }
        format.json { render json: @hr_config_initial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/initials/1
  # PATCH/PUT /hr/config/initials/1.json
  def update
    respond_to do |format|
      if @hr_config_initial.update(hr_config_initial_params)
        format.html { redirect_to @hr_config_initial, notice: 'Initial was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_initial }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_initial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/initials/1
  # DELETE /hr/config/initials/1.json
  def destroy
    @hr_config_initial.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_initials_url, notice: 'Initial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_initial
      @hr_config_initial = Hr::Config::Initial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_initial_params
      params.require(:hr_config_initial).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
