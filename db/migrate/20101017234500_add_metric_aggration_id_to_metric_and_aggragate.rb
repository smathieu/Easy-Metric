class AddMetricAggrationIdToMetricAndAggragate < ActiveRecord::Migration
  def self.up
    add_column :metrics, :metric_aggregation_id, :integer
    add_column :aggregates, :metric_aggregation_id, :integer
  end

  def self.down
    drop_column :metrics, :metric_aggregation_id, :integer
    drop_column :aggregates, :metric_aggregation_id, :integer
  end
end
