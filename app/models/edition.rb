class Edition < ApplicationRecord
  belongs_to :event
  has_many :races, dependent: :destroy
end
