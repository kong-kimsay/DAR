class Hr::Config::CountriesController < ApplicationController
  before_action :set_hr_config_country, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/countries
  # GET /hr/config/countries.json
  def index
    @hr_config_countries = Hr::Config::Country.all
  end

  # GET /hr/config/countries/1
  # GET /hr/config/countries/1.json
  def show
  end

  # GET /hr/config/countries/new
  def new
    @hr_config_country = Hr::Config::Country.new
  end

  # GET /hr/config/countries/1/edit
  def edit
  end

  # POST /hr/config/countries
  # POST /hr/config/countries.json
  def create
    @hr_config_country = Hr::Config::Country.new(hr_config_country_params)

    respond_to do |format|
      if @hr_config_country.save
        format.html { redirect_to @hr_config_country, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_country }
      else
        format.html { render :new }
        format.json { render json: @hr_config_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/countries/1
  # PATCH/PUT /hr/config/countries/1.json
  def update
    respond_to do |format|
      if @hr_config_country.update(hr_config_country_params)
        format.html { redirect_to @hr_config_country, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_country }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/countries/1
  # DELETE /hr/config/countries/1.json
  def destroy
    @hr_config_country.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_country
      @hr_config_country = Hr::Config::Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_country_params
      params.require(:hr_config_country).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
