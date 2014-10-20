class Event < StatisticActiveRecord
  belongs_to :event_type, inverse_of: :events
  has_many :facts, inverse_of: :event
  delegate :timer?, :counter?, to: :event_type

end
