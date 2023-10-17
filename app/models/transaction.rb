class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transactions_groups, dependent: :destroy
  has_many :groups, through: :transactions_groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
