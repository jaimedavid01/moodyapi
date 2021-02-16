class User < ApplicationRecord
    has_secure_password
    has_many :contacts, foreign_key: :contact_id, class_name: 'Contact'
    has_many :contacts, through: :contacts
    has_many :messages
    has_many :chatrooms, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :name, presence: true
end
