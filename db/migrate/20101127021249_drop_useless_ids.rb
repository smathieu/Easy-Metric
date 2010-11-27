class DropUselessIds < ActiveRecord::Migration
  def self.up
    remove_column :metrics, :metric_aggregation_id
    remove_column :aggregates, :metric_aggregation_id
  end

  def self.down
    add_column :metrics, :metric_aggregation_id, :integer
    add_column :aggregates, :metric_aggregation_id, :integer
  end
end
