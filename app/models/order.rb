class Order < ApplicationRecord
  belongs_to :invoice, optional: true

  validates :title, presence: true
  validates :amount, presence: true, numericality: true
end
