class Room < ApplicationRecord
    has_many :room_users, dependant: :destroy
    has_many :users, through: :room_users
    has_many :messages, dependant: :destroy
    validates :name, presence: true
end
