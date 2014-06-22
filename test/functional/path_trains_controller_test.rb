require 'test_helper'

class PathTrainsControllerTest < ActionController::TestCase
  setup do
    @path_train = path_trains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:path_trains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create path_train" do
    assert_difference('PathTrain.count') do
      post :create, path_train: {  }
    end

    assert_redirected_to path_train_path(assigns(:path_train))
  end

  test "should show path_train" do
    get :show, id: @path_train
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @path_train
    assert_response :success
  end

  test "should update path_train" do
    put :update, id: @path_train, path_train: {  }
    assert_redirected_to path_train_path(assigns(:path_train))
  end

  test "should destroy path_train" do
    assert_difference('PathTrain.count', -1) do
      delete :destroy, id: @path_train
    end

    assert_redirected_to path_trains_path
  end
end
