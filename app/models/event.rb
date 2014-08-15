class Event < ActiveRecord::Base
  has_many :facts, inverse_of: :event

end
