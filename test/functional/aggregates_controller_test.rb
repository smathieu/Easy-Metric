require 'test_helper'

class AggregatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aggregates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aggregate" do
    assert_difference('Aggregate.count') do
      post :create, :aggregate => { }
    end

    assert_redirected_to aggregate_path(assigns(:aggregate))
  end

  test "should show aggregate" do
    get :show, :id => aggregates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => aggregates(:one).to_param
    assert_response :success
  end

  test "should update aggregate" do
    put :update, :id => aggregates(:one).to_param, 
      :aggregate => { :name => "aggregate name"} 
    assert_redirected_to aggregate_path(assigns(:aggregate))
  end

  test "should destroy aggregate" do
    assert_difference('Aggregate.count', -1) do
      delete :destroy, :id => aggregates(:one).to_param
    end

    assert_redirected_to aggregates_path
  end
end
