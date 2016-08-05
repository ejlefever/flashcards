class User < ActiveRecord::Base
  has_many :user_decks
  has_many :decks, through: :user_decks

  validates :name, :email, presence: true
  validates :email, format: {with: /\A\w+@\w+[.]\w+\z/i, message: "must be valid email address."}

  has_secure_password
end
