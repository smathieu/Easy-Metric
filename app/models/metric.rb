class Metric < ActiveRecord::Base
  has_many :data_units, :dependent => :destroy
  has_many :metric_aggregations, :dependent => :destroy
  has_many :aggregates, :through => :metric_aggregations
  validates_presence_of :key
  validates_presence_of :name
  accepts_nested_attributes_for :data_units, :allow_destroy => true

  def to_csv
    data_units.collect{|x| x.data_point}.join ", "
  end
end
