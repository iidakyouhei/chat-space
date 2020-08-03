class Group < ApplicationRecord
  has_many :grops_users
  has_many :messages
  has_many :users, through: :grops_users
end
