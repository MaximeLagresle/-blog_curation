class Blog < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :users
end
