class OptionGroupsController < ApplicationController
  before_action :set_option_group, only: [:show, :edit, :update, :destroy]

  # GET /option_groups
  # GET /option_groups.json
  def index
    @option_groups = OptionGroup.all
  end

  # GET /option_groups/1
  # GET /option_groups/1.json
  def show
  end

  # GET /option_groups/new
  def new
    @option_group = OptionGroup.new
  end

  # GET /option_groups/1/edit
  def edit
  end

  # POST /option_groups
  # POST /option_groups.json
  def create
    @option_group = OptionGroup.new(option_group_params)

    respond_to do |format|
      if @option_group.save
        format.html { redirect_to @option_group, notice: 'Option group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @option_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @option_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_groups/1
  # PATCH/PUT /option_groups/1.json
  def update
    respond_to do |format|
      if @option_group.update(option_group_params)
        format.html { redirect_to @option_group, notice: 'Option group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @option_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_groups/1
  # DELETE /option_groups/1.json
  def destroy
    @option_group.destroy
    respond_to do |format|
      format.html { redirect_to option_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_group
      @option_group = OptionGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_group_params
      params.require(:option_group).permit(:option_group_name)
    end
end
