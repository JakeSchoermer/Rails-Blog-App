class Option < ActiveRecord::Base
  validates :option, :presence => true
  validates :value, :presence => true
end
