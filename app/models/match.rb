class Match < ApplicationRecord
  belongs_to :dog 
  validates :dog_id, presence: true
  validates :message, presence: false
end
