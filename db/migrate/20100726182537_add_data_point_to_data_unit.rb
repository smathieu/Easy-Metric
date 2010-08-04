class AddDataPointToDataUnit < ActiveRecord::Migration
  def self.up
    add_column :data_units, :data_point, :number
  end

  def self.down
    remove_column :data_units, :data_point
  end
end
