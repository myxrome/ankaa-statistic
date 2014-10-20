class EventType < StatisticActiveRecord
  has_many :events, inverse_of: :event_type

  def timer?
    self.name.eql? 'Timer'
  end

  def counter?
    self.name.eql? 'Counter'
  end

end
