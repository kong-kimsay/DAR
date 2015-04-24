class Hr::Config::DisciplineActionsController < ApplicationController
  before_action :set_hr_config_discipline_action, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/discipline_actions
  # GET /hr/config/discipline_actions.json
  def index
    @hr_config_discipline_actions = Hr::Config::DisciplineAction.all
  end

  # GET /hr/config/discipline_actions/1
  # GET /hr/config/discipline_actions/1.json
  def show
  end

  # GET /hr/config/discipline_actions/new
  def new
    @hr_config_discipline_action = Hr::Config::DisciplineAction.new
  end

  # GET /hr/config/discipline_actions/1/edit
  def edit
  end

  # POST /hr/config/discipline_actions
  # POST /hr/config/discipline_actions.json
  def create
    @hr_config_discipline_action = Hr::Config::DisciplineAction.new(hr_config_discipline_action_params)

    respond_to do |format|
      if @hr_config_discipline_action.save
        format.html { redirect_to @hr_config_discipline_action, notice: 'Discipline action was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_discipline_action }
      else
        format.html { render :new }
        format.json { render json: @hr_config_discipline_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/discipline_actions/1
  # PATCH/PUT /hr/config/discipline_actions/1.json
  def update
    respond_to do |format|
      if @hr_config_discipline_action.update(hr_config_discipline_action_params)
        format.html { redirect_to @hr_config_discipline_action, notice: 'Discipline action was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_discipline_action }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_discipline_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/discipline_actions/1
  # DELETE /hr/config/discipline_actions/1.json
  def destroy
    @hr_config_discipline_action.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_discipline_actions_url, notice: 'Discipline action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_discipline_action
      @hr_config_discipline_action = Hr::Config::DisciplineAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_discipline_action_params
      params.require(:hr_config_discipline_action).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
