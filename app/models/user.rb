class User < ApplicationRecord
  has_many :grops_user
  has_many :message, through: :grops_user
end
