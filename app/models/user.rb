class User < ApplicationRecord
  has_many :grops_users
  has_many :messages
  has_many :groups, through: :grops_user
end
