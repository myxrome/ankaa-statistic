class Device < StatisticActiveRecord
  has_many :sessions, inverse_of: :device
end
