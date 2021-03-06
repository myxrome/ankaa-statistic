class EventType < StatisticActiveRecord
  has_many :events, inverse_of: :event_type

  def self.unknown
    EventType.find_by(name: 'Unknown')
  end

  def unknown?
    self.name.eql? 'Unknown'
  end

  def timer?
    self.name.eql? 'Timer'
  end

  def counter?
    self.name.eql? 'Counter'
  end

end
