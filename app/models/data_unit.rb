class DataUnit < ActiveRecord::Base
  belongs_to :metric
  validates_presence_of :when
end
