class Race < ApplicationRecord
  belongs_to :edition
  has_many :registrations, dependent: :destroy
end
