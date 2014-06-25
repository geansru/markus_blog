require 'test_helper'

class MarkusControllerTest < ActionController::TestCase
  setup do
    @marku = markus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marku" do
    assert_difference('Marku.count') do
      post :create, marku: { height: @marku.height, month: @marku.month, photo: @marku.photo, post: @marku.post, weight: @marku.weight }
    end

    assert_redirected_to marku_path(assigns(:marku))
  end

  test "should show marku" do
    get :show, id: @marku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marku
    assert_response :success
  end

  test "should update marku" do
    patch :update, id: @marku, marku: { height: @marku.height, month: @marku.month, photo: @marku.photo, post: @marku.post, weight: @marku.weight }
    assert_redirected_to marku_path(assigns(:marku))
  end

  test "should destroy marku" do
    assert_difference('Marku.count', -1) do
      delete :destroy, id: @marku
    end

    assert_redirected_to markus_path
  end
end
