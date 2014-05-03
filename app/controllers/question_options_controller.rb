class QuestionOptionsController < ApplicationController
  before_action :set_question_option, only: [:show, :edit, :update, :destroy]

  # GET /question_options
  # GET /question_options.json
  def index
    @question_options = QuestionOption.all
  end

  # GET /question_options/1
  # GET /question_options/1.json
  def show
  end

  # GET /question_options/new
  def new
    @question_option = QuestionOption.new
  end

  # GET /question_options/1/edit
  def edit
  end

  # POST /question_options
  # POST /question_options.json
  def create
    @question_option = QuestionOption.new(question_option_params)

    respond_to do |format|
      if @question_option.save
        format.html { redirect_to @question_option, notice: 'Question option was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_option }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_options/1
  # PATCH/PUT /question_options/1.json
  def update
    respond_to do |format|
      if @question_option.update(question_option_params)
        format.html { redirect_to @question_option, notice: 'Question option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_options/1
  # DELETE /question_options/1.json
  def destroy
    @question_option.destroy
    respond_to do |format|
      format.html { redirect_to question_options_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_option
      @question_option = QuestionOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_option_params
      params.require(:question_option).permit(:question_id, :option_choice_id)
    end
end
