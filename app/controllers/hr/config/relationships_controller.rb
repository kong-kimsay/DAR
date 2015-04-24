class Hr::Config::RelationshipsController < ApplicationController
  before_action :set_hr_config_relationship, only: [:show, :edit, :update, :destroy]

  # GET /hr/config/relationships
  # GET /hr/config/relationships.json
  def index
    @hr_config_relationships = Hr::Config::Relationship.all
  end

  # GET /hr/config/relationships/1
  # GET /hr/config/relationships/1.json
  def show
  end

  # GET /hr/config/relationships/new
  def new
    @hr_config_relationship = Hr::Config::Relationship.new
  end

  # GET /hr/config/relationships/1/edit
  def edit
  end

  # POST /hr/config/relationships
  # POST /hr/config/relationships.json
  def create
    @hr_config_relationship = Hr::Config::Relationship.new(hr_config_relationship_params)

    respond_to do |format|
      if @hr_config_relationship.save
        format.html { redirect_to @hr_config_relationship, notice: 'Relationship was successfully created.' }
        format.json { render :show, status: :created, location: @hr_config_relationship }
      else
        format.html { render :new }
        format.json { render json: @hr_config_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr/config/relationships/1
  # PATCH/PUT /hr/config/relationships/1.json
  def update
    respond_to do |format|
      if @hr_config_relationship.update(hr_config_relationship_params)
        format.html { redirect_to @hr_config_relationship, notice: 'Relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_config_relationship }
      else
        format.html { render :edit }
        format.json { render json: @hr_config_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr/config/relationships/1
  # DELETE /hr/config/relationships/1.json
  def destroy
    @hr_config_relationship.destroy
    respond_to do |format|
      format.html { redirect_to hr_config_relationships_url, notice: 'Relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_config_relationship
      @hr_config_relationship = Hr::Config::Relationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_config_relationship_params
      params.require(:hr_config_relationship).permit(:code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate)
    end
end
