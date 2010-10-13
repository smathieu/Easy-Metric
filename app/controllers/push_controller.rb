class PushController < ApplicationController
  def data
    id = params[:id]

    begin
      @metric = Metric.find(id)
    rescue ActiveRecord::RecordNotFound 
      @metric = Metric.find(:first, :conditions => ["key = ?", id])
    end

    data_units = @metric.data_units
    to_add = params[:data]

    data_unit = DataUnit.new
    data_unit.data_point = to_add
    data_unit.when = DateTime.now
    data_units.push data_unit

    @metric.save!
    respond_to do |format|
      format.html { head :ok }
    end
  end
end
