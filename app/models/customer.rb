class Customer < ApplicationRecord
  validates :name ,:lastname, :email, presence: true, email: true
  has_many :orders
  has_many :tickets, through: :orders
end
