class Event < ApplicationRecord
  has_many :editions, dependent: :destroy
end
