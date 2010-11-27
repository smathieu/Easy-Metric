class Aggregate < ActiveRecord::Base
  has_many :metric_aggregations
  has_many :metrics, :through => :metric_aggregations
end
