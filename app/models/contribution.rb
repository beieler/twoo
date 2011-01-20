class Contribution < ActiveRecord::Base
  belongs_to :account
  belongs_to :book
end
