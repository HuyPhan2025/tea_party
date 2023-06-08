class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea

  enum status: [ :active, :cancel ]
  enum frequency: [ :monthly, :yearly ]
end
