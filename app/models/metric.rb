class Metric < ActiveRecord::Base
  has_many :data_units
  validates_presence_of :key
  validates_presence_of :name
  accepts_nested_attributes_for :data_units

  def to_csv
    data_units.collect{|x| x.data_point}.join ", "
  end
end
