class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :entities, class_name: 'entity', foreign_key: 'author_id', dependent: :destroy
  has_many :groups, dependent: :destroy
  validates :name, presence: false
end
