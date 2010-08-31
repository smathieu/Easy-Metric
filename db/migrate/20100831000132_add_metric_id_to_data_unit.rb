class AddMetricIdToDataUnit < ActiveRecord::Migration
  def self.up
    add_column :data_units, :metric_id, :number
  end

  def self.down
    remove_column :data_units, :metric_id
  end
end
