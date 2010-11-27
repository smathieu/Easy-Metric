class RenameMetricCategorizationsToMetricAggregation < ActiveRecord::Migration
  def self.up
    rename_table :metric_categorizations, :metric_aggregation
  end

  def self.down
    rename_table :metric_aggregation, :metric_categorizations
  end
end
