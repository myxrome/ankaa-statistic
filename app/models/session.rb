class Session < ActiveRecord::Base
  belongs_to :device, inverse_of: :sessions
  has_many :facts, inverse_of: :session

end
