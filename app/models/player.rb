class Player < ApplicationRecord
  has_many :records


  validates :email, presence: true
  validates :user_name, presence: true
  validates :password, presence: true
end
