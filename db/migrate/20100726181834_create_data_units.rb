class CreateDataUnits < ActiveRecord::Migration
  def self.up
    create_table :data_units do |t|
      t.number :data_point

      t.timestamps
    end
  end

  def self.down
    drop_table :data_units
  end
end
