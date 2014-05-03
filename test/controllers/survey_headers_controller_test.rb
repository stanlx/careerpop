require 'test_helper'

class SurveyHeadersControllerTest < ActionController::TestCase
  setup do
    @survey_header = survey_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_header" do
    assert_difference('SurveyHeader.count') do
      post :create, survey_header: { instructions: @survey_header.instructions, other_header_info: @survey_header.other_header_info, survey_name: @survey_header.survey_name }
    end

    assert_redirected_to survey_header_path(assigns(:survey_header))
  end

  test "should show survey_header" do
    get :show, id: @survey_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_header
    assert_response :success
  end

  test "should update survey_header" do
    patch :update, id: @survey_header, survey_header: { instructions: @survey_header.instructions, other_header_info: @survey_header.other_header_info, survey_name: @survey_header.survey_name }
    assert_redirected_to survey_header_path(assigns(:survey_header))
  end

  test "should destroy survey_header" do
    assert_difference('SurveyHeader.count', -1) do
      delete :destroy, id: @survey_header
    end

    assert_redirected_to survey_headers_path
  end
end
