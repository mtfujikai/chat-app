class Message < ApplicationRecord
    belongs_to :user
    belongs_to :room
    valdates :content, presence: true
end
