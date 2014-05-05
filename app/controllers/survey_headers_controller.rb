class SurveyHeadersController < ApplicationController
  before_action :set_survey_header, only: [:show, :edit, :update, :destroy]
  # GET /survey_headers
  # GET /survey_headers.json
  def index
    @survey_headers = SurveyHeader.all
  end

  # GET /survey_headers/1
  # GET /survey_headers/1.json
  def show
		@survey_header = SurveyHeader.find(params[:id])
		@survey_sections = @survey_header.survey_sections.paginate(page: params[:page])
	end

  # GET /survey_headers/new
  def new
    @survey_header = SurveyHeader.new
  end

  # GET /survey_headers/1/edit
  def edit
  end

  # POST /survey_headers
  # POST /survey_headers.json
  def create
    @survey_header = SurveyHeader.new(survey_header_params)

    respond_to do |format|
      if @survey_header.save
        format.html { redirect_to @survey_header, notice: 'Survey header was successfully created.' }
        format.json { render action: 'show', status: :created, location: @survey_header }
      else
        format.html { render action: 'new' }
        format.json { render json: @survey_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_headers/1
  # PATCH/PUT /survey_headers/1.json
  def update
    respond_to do |format|
      if @survey_header.update(survey_header_params)
        format.html { redirect_to @survey_header, notice: 'Survey header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @survey_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_headers/1
  # DELETE /survey_headers/1.json
  def destroy
    @survey_header.destroy
    respond_to do |format|
      format.html { redirect_to survey_headers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_header
      @survey_header = SurveyHeader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_header_params
      params.require(:survey_header).permit(:survey_name, :instructions, :other_header_info)
    end
end
