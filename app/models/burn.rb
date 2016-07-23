class Burn < ActiveRecord::Base
  has_many :events
  belongs_to :admin
end
