require 'test_helper'

class ListItemCategoriesControllerTest < ActionController::TestCase
  setup do
    @list_item_category = list_item_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_item_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_item_category" do
    assert_difference('ListItemCategory.count') do
      post :create, :list_item_category => @list_item_category.attributes
    end

    assert_redirected_to list_item_category_path(assigns(:list_item_category))
  end

  test "should show list_item_category" do
    get :show, :id => @list_item_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @list_item_category.to_param
    assert_response :success
  end

  test "should update list_item_category" do
    put :update, :id => @list_item_category.to_param, :list_item_category => @list_item_category.attributes
    assert_redirected_to list_item_category_path(assigns(:list_item_category))
  end

  test "should destroy list_item_category" do
    assert_difference('ListItemCategory.count', -1) do
      delete :destroy, :id => @list_item_category.to_param
    end

    assert_redirected_to list_item_categories_path
  end
end
