class Match < ApplicationRecord
 has_many :chats, dependent: :destroy
end
