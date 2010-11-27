class AddMetricIdToMetricAggregation < ActiveRecord::Migration
  def self.up
    #add_column :metric_aggregation, :metric_id, :number
    #add_column :metric_aggregation, :aggregate_id, :number
  end

  def self.down
    #remove_column :metric_aggregation, :metric_id
    #remove_column :metric_aggregation, :aggregate_id
  end
end
