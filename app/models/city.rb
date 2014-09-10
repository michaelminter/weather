class City < ActiveRecord::Base
  has_many :climates
  validates_presence_of :name
end
