class TicketType < ApplicationRecord
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000000000 }
  belongs_to :event
end
