class Session < StatisticActiveRecord
  belongs_to :device, inverse_of: :sessions
  has_many :facts, as: :cause
  accepts_nested_attributes_for :facts, reject_if: :all_blank, allow_destroy: true
  before_save :define_status, :normalize_session

  def define_status
    self.status ||= self.finished_at.nil? ? STATUS_BROKEN : STATUS_OK
  end

  def normalize_session
    self.finished_at ||= facts.map { |fact|
      fact.fact_details.last.happened_at
    }.max
    self.finished_at ||= self.started_at
  end

  def broken?
    self.status == STATUS_BROKEN
  end

  private
  STATUS_BROKEN = 1
  STATUS_OK = 0

end
