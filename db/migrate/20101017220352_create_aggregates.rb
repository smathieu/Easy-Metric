class CreateAggregates < ActiveRecord::Migration
  def self.up
    create_table :aggregates do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :aggregates
  end
end
