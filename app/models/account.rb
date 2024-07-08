class Account < ApplicationRecord
    belongs_to :customer
    has_many :account_statuses
end
