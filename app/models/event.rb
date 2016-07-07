class Event < ActiveRecord::Base
  belongs_to :burn
  has_many :items, through: :event_items
  has_many :event_items
end
