class Event < StatisticActiveRecord
  has_many :facts, inverse_of: :event

end
