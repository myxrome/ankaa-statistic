class CrashReport < StatisticActiveRecord
  belongs_to :device, inverse_of: :crash_reports

end
