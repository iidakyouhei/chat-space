class Group < ApplicationRecord
  has_many :grops_user
  has_many :message
  has_many :user, through: :grops_user
end
