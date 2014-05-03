require 'test_helper'

class UserSurveySectionsControllerTest < ActionController::TestCase
  setup do
    @user_survey_section = user_survey_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_survey_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_survey_section" do
    assert_difference('UserSurveySection.count') do
      post :create, user_survey_section: { completed_on: @user_survey_section.completed_on, survey_section_id: @user_survey_section.survey_section_id, user_id: @user_survey_section.user_id }
    end

    assert_redirected_to user_survey_section_path(assigns(:user_survey_section))
  end

  test "should show user_survey_section" do
    get :show, id: @user_survey_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_survey_section
    assert_response :success
  end

  test "should update user_survey_section" do
    patch :update, id: @user_survey_section, user_survey_section: { completed_on: @user_survey_section.completed_on, survey_section_id: @user_survey_section.survey_section_id, user_id: @user_survey_section.user_id }
    assert_redirected_to user_survey_section_path(assigns(:user_survey_section))
  end

  test "should destroy user_survey_section" do
    assert_difference('UserSurveySection.count', -1) do
      delete :destroy, id: @user_survey_section
    end

    assert_redirected_to user_survey_sections_path
  end
end
