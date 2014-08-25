class FactDetail < ActiveRecord::Base
  belongs_to :fact, inverse_of: :fact_details

end
