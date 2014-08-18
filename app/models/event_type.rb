class EventType < StatisticActiveRecord
  has_many :events, inverse_of: :event_type
end
