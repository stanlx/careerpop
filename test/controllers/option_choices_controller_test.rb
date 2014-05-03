require 'test_helper'

class OptionChoicesControllerTest < ActionController::TestCase
  setup do
    @option_choice = option_choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:option_choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create option_choice" do
    assert_difference('OptionChoice.count') do
      post :create, option_choice: { option_choice_name: @option_choice.option_choice_name, option_group_id: @option_choice.option_group_id }
    end

    assert_redirected_to option_choice_path(assigns(:option_choice))
  end

  test "should show option_choice" do
    get :show, id: @option_choice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option_choice
    assert_response :success
  end

  test "should update option_choice" do
    patch :update, id: @option_choice, option_choice: { option_choice_name: @option_choice.option_choice_name, option_group_id: @option_choice.option_group_id }
    assert_redirected_to option_choice_path(assigns(:option_choice))
  end

  test "should destroy option_choice" do
    assert_difference('OptionChoice.count', -1) do
      delete :destroy, id: @option_choice
    end

    assert_redirected_to option_choices_path
  end
end
