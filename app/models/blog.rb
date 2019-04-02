class Blog < ApplicationRecord
  require 'carrierwave/orm/activerecord'

  has_many :posts, dependent: :destroy
  has_many :users

  mount_uploader :photo, PhotoUploader

end
