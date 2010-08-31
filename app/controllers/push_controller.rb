class PushController < ApplicationController
  def data
    @metric = Metric.find(params[:id])
    data_units = @metric.data_units
    to_add = params[:data]

    data_unit = DataUnit.new
    data_unit.data_point = to_add
    data_units.push data_unit

    data_unit.save
    @metric.save
    respond_to do |format|
      format.html { head :ok }
    end
  end
end
