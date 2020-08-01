class User < ApplicationRecord
  has_many :grops_user
  has_many :message
  has_many :group, through: :grops_user
end
