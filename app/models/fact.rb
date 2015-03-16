class Fact < StatisticActiveRecord
  belongs_to :cause, polymorphic: true
  belongs_to :event, inverse_of: :facts
  belongs_to :context, polymorphic: true

  has_many :fact_details, inverse_of: :fact, dependent: :destroy
  accepts_nested_attributes_for :fact_details, reject_if: :all_blank, allow_destroy: true
  before_save :normalize_fact_details

  def normalize_fact_details
    if self.event.timer? && self.fact_details.length == 1
      last_fact = self.fact_details.first
      self.fact_details.build order: last_fact.order + 1, happened_at: last_fact.happened_at
    end
  end

end
