class Device < ActiveRecord::Base
  has_many :sessions, inverse_of: :device
end
