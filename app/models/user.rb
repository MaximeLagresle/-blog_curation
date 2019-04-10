class User < ApplicationRecord
  # require 'carrierwave/orm/activerecord'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  has_many :blogs
  has_many :posts, through: :blogs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
