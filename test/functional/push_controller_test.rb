require 'test_helper'

class PushControllerTest < ActionController::TestCase
  test "should get data" do
    get :data, {:id => metrics(:one).to_param, :data => 1}
    assert_response :success
  end

  test "should add data using id" do
    some_data = 1
    get :data, {:id => metrics(:one).to_param, :data => some_data}
    assert_response :success
    assert_equal some_data, metrics(:one).data_units[0].data_point
    assert metrics(:one).data_units[0].when.is_a? ActiveSupport::TimeWithZone 
  end

  test "should add data using key" do
    some_data = 1
    get :data, {:id => metrics(:two).key, :data => some_data}
    assert_response :success
    assert_equal some_data, metrics(:two).data_units[0].data_point
    assert metrics(:two).data_units[0].when.is_a? ActiveSupport::TimeWithZone 
  end

  test "routing add with id" do
    assert_routing '/push/1/data/2', { :controller => "push", :action => "data", :id => "1", :data => "2" }
  end

  test "routing add with key" do
    assert_routing '/push/my_key/data/2', { :controller => "push", :action => "data", :id => "my_key", :data => "2" }
  end
end
