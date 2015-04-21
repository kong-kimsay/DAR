class Hr::Config::CertificationsController < ApplicationController
  before_action :set_hr_config_certification, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/certifications
  # GET /hr/config/certifications.json
  def index
    @hr_config_certifications = Hr::Config::Certification.all
  end

  # GET /hr/config/certifications/1
  # GET /hr/config/certifications/1.json
  def show
  end

  # GET /hr/config/certifications/new
  def new
    @hr_config_certification = Hr::Config::Certification.new
  end

  # GET /hr/config/certifications/1/edit
  def edit
  end

  # POST /hr/config/certifications
  # POST /hr/config/certifications.json
  def create
    @hr_config_certification = Hr::Config::Certification.new(hr_config_certification_params)

    respond_to do |format|
      if @hr_config_certification.save
        format.html { redirect_to @hr_config_certification, notice: 'Certification was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_certification }
      else
        format.html { render :new }
        format.json { render json: @hr_config_certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/certifications/1
  # PATCH/PUT /hr/config/certifications/1.json
  def update
    respond_to do |format|
      if @hr_config_certification.update(hr_config_certification_params)
        format.html { redirect_to @hr_config_certification, notice: 'Certification was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_certification }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/certifications/1
  # DELETE /hr/config/certifications/1.json
  def destroy
    @hr_config_certification.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_certifications_url, notice: 'Certification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_certification
      @hr_config_certification = Hr::Config::Certification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_certification_params
      params.require(:hr_config_certification).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
