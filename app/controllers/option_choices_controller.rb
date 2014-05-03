class OptionChoicesController < ApplicationController
  before_action :set_option_choice, only: [:show, :edit, :update, :destroy]

  # GET /option_choices
  # GET /option_choices.json
  def index
    @option_choices = OptionChoice.all
  end

  # GET /option_choices/1
  # GET /option_choices/1.json
  def show
  end

  # GET /option_choices/new
  def new
    @option_choice = OptionChoice.new
  end

  # GET /option_choices/1/edit
  def edit
  end

  # POST /option_choices
  # POST /option_choices.json
  def create
    @option_choice = OptionChoice.new(option_choice_params)

    respond_to do |format|
      if @option_choice.save
        format.html { redirect_to @option_choice, notice: 'Option choice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @option_choice }
      else
        format.html { render action: 'new' }
        format.json { render json: @option_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_choices/1
  # PATCH/PUT /option_choices/1.json
  def update
    respond_to do |format|
      if @option_choice.update(option_choice_params)
        format.html { redirect_to @option_choice, notice: 'Option choice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @option_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_choices/1
  # DELETE /option_choices/1.json
  def destroy
    @option_choice.destroy
    respond_to do |format|
      format.html { redirect_to option_choices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_choice
      @option_choice = OptionChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_choice_params
      params.require(:option_choice).permit(:option_group_id, :option_choice_name)
    end
end
