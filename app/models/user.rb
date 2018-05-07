class User < ApplicationRecord
  has_many :ratings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
