class ExternalMessage < StatisticActiveRecord
  has_one :fact, as: :cause

end
