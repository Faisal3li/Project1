class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :posts, dependent: :destroy
  has_many :user_types, through: :posts
  has_many :post_tags, through: :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
