class Fact < StatisticActiveRecord
  belongs_to :session, inverse_of: :facts
  belongs_to :event, inverse_of: :facts
  belongs_to :context, polymorphic: true

  has_many :fact_details, inverse_of: :fact, dependent: :destroy
  accepts_nested_attributes_for :fact_details, reject_if: :all_blank, allow_destroy: true

end
