class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions_groups, dependent: :destroy
  has_many :groups, through: :transactions_groups
  has_many :transactions, through: :transactions

  validates :name, :icon, presence: true
end
# class Group < ApplicationRecord
#   belongs_to :user
#   has_many :entity_groups, dependent: :destroy
#   has_many :entities, through: :entity_groups
#   has_many :transactions, through: :transactions

#   validates :name, :icon, presence: true
# end

