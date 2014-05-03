class UserSurveySectionsController < ApplicationController
  before_action :set_user_survey_section, only: [:show, :edit, :update, :destroy]

  # GET /user_survey_sections
  # GET /user_survey_sections.json
  def index
    @user_survey_sections = UserSurveySection.all
  end

  # GET /user_survey_sections/1
  # GET /user_survey_sections/1.json
  def show
  end

  # GET /user_survey_sections/new
  def new
    @user_survey_section = UserSurveySection.new
  end

  # GET /user_survey_sections/1/edit
  def edit
  end

  # POST /user_survey_sections
  # POST /user_survey_sections.json
  def create
    @user_survey_section = UserSurveySection.new(user_survey_section_params)

    respond_to do |format|
      if @user_survey_section.save
        format.html { redirect_to @user_survey_section, notice: 'User survey section was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_survey_section }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_survey_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_survey_sections/1
  # PATCH/PUT /user_survey_sections/1.json
  def update
    respond_to do |format|
      if @user_survey_section.update(user_survey_section_params)
        format.html { redirect_to @user_survey_section, notice: 'User survey section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_survey_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_survey_sections/1
  # DELETE /user_survey_sections/1.json
  def destroy
    @user_survey_section.destroy
    respond_to do |format|
      format.html { redirect_to user_survey_sections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_survey_section
      @user_survey_section = UserSurveySection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_survey_section_params
      params.require(:user_survey_section).permit(:user_id, :survey_section_id, :completed_on)
    end
end
