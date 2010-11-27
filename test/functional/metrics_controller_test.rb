require 'test_helper'

class MetricsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metric" do
    assert_difference('Metric.count') do
      post :create, :metric => { :name => "some name", :key => "some key" }
    end

    assert_redirected_to metric_path(assigns(:metric))
  end

  test "should show metric" do
    get :show, :id => metrics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => metrics(:one).to_param
    assert_response :success
  end

  test "should update metric" do
    put :update, :id => metrics(:one).to_param, 
      :metric => {:name => "my name", :key => "my key"}
    assert_redirected_to metric_path(assigns(:metric))
  end

  test "should destroy metric" do
    assert_difference('Metric.count', -1) do
      delete :destroy, :id => metrics(:one).to_param
    end

    assert_redirected_to metrics_path
  end

  test "should show graph" do
    get :graph, :id => metrics(:one).to_param
    assert_response :success
  end

  test "routing graph" do
    assert_routing '/metrics/1/graph', { :controller => "metrics", :action => "graph", :id => "1" }
  end
end
