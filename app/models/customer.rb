class Customer < ApplicationRecord
    has_one :account
    belongs_to :consultant
end
