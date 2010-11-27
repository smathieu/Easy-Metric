class CreateMetricCategorizations < ActiveRecord::Migration
  def self.up
    create_table :metric_categorizations do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :metric_categorizations
  end
end
