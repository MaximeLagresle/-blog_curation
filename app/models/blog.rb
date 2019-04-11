class Blog < ApplicationRecord
  require 'carrierwave/orm/activerecord'

  has_many :posts, dependent: :destroy
  has_many :users

  acts_as_followable

  mount_uploader :photo, PhotoUploader

end
