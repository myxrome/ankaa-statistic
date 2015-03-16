class CrashReport < StatisticActiveRecord
  belongs_to :device, inverse_of: :crash_reports
  before_save :init_key

  def init_key
    self.key ||= Digest::SHA1.hexdigest self.name + self.version + self.exception + self.cause + self.stacktrace
  end

end
