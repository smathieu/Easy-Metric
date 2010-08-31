require 'test_helper'

class PushControllerTest < ActionController::TestCase
  test "should get data" do
    get :data, {:id => metrics(:one).to_param, :data => 1}
    assert_response :success
  end

  test "should add data" do
    some_data = 1
    get :data, {:id => metrics(:one).to_param, :data => some_data}
    assert_response :success
    assert_equal 1, metrics(:one).data_units[0].data_point
  end

  test "routing add" do
    assert_routing '/push/1/data/2', { :controller => "push", :action => "data", :id => "1", :data => "2" }
  end
end
