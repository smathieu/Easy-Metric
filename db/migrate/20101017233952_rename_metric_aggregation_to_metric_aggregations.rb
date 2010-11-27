class RenameMetricAggregationToMetricAggregations < ActiveRecord::Migration
  def self.up
    rename_table :metric_aggregation, :metric_aggregations
  end

  def self.down
    rename_table :metric_aggregations, :metric_aggregation
  end
end
