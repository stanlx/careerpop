require 'test_helper'

class OptionGroupsControllerTest < ActionController::TestCase
  setup do
    @option_group = option_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:option_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create option_group" do
    assert_difference('OptionGroup.count') do
      post :create, option_group: { option_group_name: @option_group.option_group_name }
    end

    assert_redirected_to option_group_path(assigns(:option_group))
  end

  test "should show option_group" do
    get :show, id: @option_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option_group
    assert_response :success
  end

  test "should update option_group" do
    patch :update, id: @option_group, option_group: { option_group_name: @option_group.option_group_name }
    assert_redirected_to option_group_path(assigns(:option_group))
  end

  test "should destroy option_group" do
    assert_difference('OptionGroup.count', -1) do
      delete :destroy, id: @option_group
    end

    assert_redirected_to option_groups_path
  end
end
