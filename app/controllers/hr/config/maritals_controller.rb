class Hr::Config::MaritalsController < ApplicationController
  before_action :set_hr_config_marital, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hr_config_maritals = Hr::Config::Marital.all
    respond_with(@hr_config_maritals)
  end

  def show
    respond_with(@hr_config_marital)
  end

  def new
    @hr_config_marital = Hr::Config::Marital.new
    respond_with(@hr_config_marital)
  end

  def edit
  end

  def create
    @hr_config_marital = Hr::Config::Marital.new(hr_config_marital_params)
    @hr_config_marital.save
    respond_with(@hr_config_marital)
  end

  def update
    @hr_config_marital.update(hr_config_marital_params)
    respond_with(@hr_config_marital)
  end

  def destroy
    @hr_config_marital.destroy
    respond_with(@hr_config_marital)
  end

  private
    def set_hr_config_marital
      @hr_config_marital = Hr::Config::Marital.find(params[:id])
    end

    def hr_config_marital_params
      params.require(:hr_config_marital).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
