class UserDeck < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
end
