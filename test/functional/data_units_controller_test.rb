require 'test_helper'

class DataUnitsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "should destroy data unit" do
    assert_difference('DataUnit.count', -1) do
      delete :destroy, :id => data_units(:one).to_param
    end

    assert_redirected_to metrics_path
  end

  test "routing destroy" do
    assert_routing '/data_units/1/destroy', { :controller => "data_units", :action => "destroy", :id => "1" }
  end
end
