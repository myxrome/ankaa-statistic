class StatisticActiveRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "statistic_#{Rails.env}".to_sym
end