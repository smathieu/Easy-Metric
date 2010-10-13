class DataUnitsController < ApplicationController
  # DELETE /metrics/1
  # DELETE /metrics/1.xml
  def destroy
    @data_unit = DataUnit.find(params[:id])
    @data_unit.destroy

    respond_to do |format|
      format.html { redirect_to(metrics_url) }
      format.xml  { head :ok }
    end
  end
end
