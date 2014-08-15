class Fact < StatisticActiveRecord
  belongs_to :session, inverse_of: :facts
  belongs_to :event, inverse_of: :facts
  belongs_to :context, polymorphic: true

  belongs_to :next, class_name: 'Fact'
  has_one :previous, class_name: 'Fact', foreign_key: 'previous_id'

end
