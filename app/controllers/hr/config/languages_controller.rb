class Hr::Config::LanguagesController < ApplicationController
  before_action :set_hr_config_language, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/languages
  # GET /hr/config/languages.json
  def index
    @hr_config_languages = Hr::Config::Language.all
  end

  # GET /hr/config/languages/1
  # GET /hr/config/languages/1.json
  def show
  end

  # GET /hr/config/languages/new
  def new
    @hr_config_language = Hr::Config::Language.new
  end

  # GET /hr/config/languages/1/edit
  def edit
  end

  # POST /hr/config/languages
  # POST /hr/config/languages.json
  def create
    @hr_config_language = Hr::Config::Language.new(hr_config_language_params)

    respond_to do |format|
      if @hr_config_language.save
        format.html { redirect_to @hr_config_language, notice: 'Language was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_language }
      else
        format.html { render :new }
        format.json { render json: @hr_config_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/languages/1
  # PATCH/PUT /hr/config/languages/1.json
  def update
    respond_to do |format|
      if @hr_config_language.update(hr_config_language_params)
        format.html { redirect_to @hr_config_language, notice: 'Language was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_language }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/languages/1
  # DELETE /hr/config/languages/1.json
  def destroy
    @hr_config_language.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_languages_url, notice: 'Language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_language
      @hr_config_language = Hr::Config::Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_language_params
      params.require(:hr_config_language).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
