class Session < StatisticActiveRecord
  belongs_to :device, inverse_of: :sessions
  has_many :facts, inverse_of: :session
  accepts_nested_attributes_for :facts, reject_if: :all_blank, allow_destroy: true

end
