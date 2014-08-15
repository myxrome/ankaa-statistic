class Session < ActiveRecord::Base
  belongs_to :device, inverse_of: :sessions
end
