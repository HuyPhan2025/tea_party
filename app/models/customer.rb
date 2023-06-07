class Customer < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
