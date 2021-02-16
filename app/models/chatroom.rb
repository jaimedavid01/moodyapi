class Chatroom < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :messages

    validates :name, presence: true
    validates :user_id, presence: true
    validates :contact_id, presence: true
end
