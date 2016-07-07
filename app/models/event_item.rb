class EventItem < ActiveRecord::Base
  belongs_to :event 
  belongs_to :item
end
