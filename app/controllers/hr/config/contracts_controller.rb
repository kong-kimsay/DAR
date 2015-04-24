class Hr::Config::ContractsController < ApplicationController
  before_action :set_hr_config_contract, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/contracts
  # GET /hr/config/contracts.json
  def index
    @hr_config_contracts = Hr::Config::Contract.all
  end

  # GET /hr/config/contracts/1
  # GET /hr/config/contracts/1.json
  def show
  end

  # GET /hr/config/contracts/new
  def new
    @hr_config_contract = Hr::Config::Contract.new
  end

  # GET /hr/config/contracts/1/edit
  def edit
  end

  # POST /hr/config/contracts
  # POST /hr/config/contracts.json
  def create
    @hr_config_contract = Hr::Config::Contract.new(hr_config_contract_params)

    respond_to do |format|
      if @hr_config_contract.save
        format.html { redirect_to @hr_config_contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_contract }
      else
        format.html { render :new }
        format.json { render json: @hr_config_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/contracts/1
  # PATCH/PUT /hr/config/contracts/1.json
  def update
    respond_to do |format|
      if @hr_config_contract.update(hr_config_contract_params)
        format.html { redirect_to @hr_config_contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_contract }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/contracts/1
  # DELETE /hr/config/contracts/1.json
  def destroy
    @hr_config_contract.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_contract
      @hr_config_contract = Hr::Config::Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_contract_params
      params.require(:hr_config_contract).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
