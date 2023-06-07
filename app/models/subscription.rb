class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea

  enum status: { cancel: 0, active: 1}
  enum frequency: { month: 0, year: 1 } 
end
