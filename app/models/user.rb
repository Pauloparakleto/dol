class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :articles

  validates :name, presence: true, length: { minimum: 2, maximum: 15 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
