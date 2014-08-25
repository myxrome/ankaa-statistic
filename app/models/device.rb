class Device < StatisticActiveRecord
  has_many :sessions, inverse_of: :device
  accepts_nested_attributes_for :sessions, reject_if: :all_blank, allow_destroy: true

end
