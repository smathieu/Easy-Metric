class AddInputDateAsDate < ActiveRecord::Migration
  def self.up
    add_column :data_units, :when, :datetime
  end

  def self.down
    remove_column :data_units, :when
  end
end
