require 'test_helper'

class SurveySectionsControllerTest < ActionController::TestCase
  setup do
    @survey_section = survey_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_section" do
    assert_difference('SurveySection.count') do
      post :create, survey_section: { section_name: @survey_section.section_name, section_required: @survey_section.section_required, section_subheading: @survey_section.section_subheading, section_title: @survey_section.section_title, survey_header_id: @survey_section.survey_header_id }
    end

    assert_redirected_to survey_section_path(assigns(:survey_section))
  end

  test "should show survey_section" do
    get :show, id: @survey_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_section
    assert_response :success
  end

  test "should update survey_section" do
    patch :update, id: @survey_section, survey_section: { section_name: @survey_section.section_name, section_required: @survey_section.section_required, section_subheading: @survey_section.section_subheading, section_title: @survey_section.section_title, survey_header_id: @survey_section.survey_header_id }
    assert_redirected_to survey_section_path(assigns(:survey_section))
  end

  test "should destroy survey_section" do
    assert_difference('SurveySection.count', -1) do
      delete :destroy, id: @survey_section
    end

    assert_redirected_to survey_sections_path
  end
end
