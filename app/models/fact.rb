class Fact < StatisticActiveRecord
  belongs_to :cause, polymorphic: true
  belongs_to :event, inverse_of: :facts
  belongs_to :context, polymorphic: true

  has_many :fact_details, inverse_of: :fact, dependent: :destroy
  accepts_nested_attributes_for :fact_details, reject_if: :all_blank, allow_destroy: true
  before_save :normalize_fact_details
  after_save :normalize_context

  def normalize_fact_details
    if self.event.timer? && self.fact_details.length == 1
      last_fact = self.fact_details.first
      self.fact_details.build order: last_fact.order + 1, happened_at: last_fact.happened_at
    end
  end

  def normalize_context
    unless self.external_context.blank?
      if self.context_id.blank?
        fact = Fact.where(external_context: self.external_context).where.not(context_id: nil).first
        update_attributes!(context_id: fact.context_id, context_type: fact.context_type) if fact
      else
        Fact.where(external_context: self.external_context).where(context_id: nil).each do |fact|
          fact.update_attributes!(context_id: self.context_id, context_type: self.context_type)
        end
      end
    end
  end

end
