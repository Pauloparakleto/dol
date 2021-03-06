class Article < ApplicationRecord

  validates :title, presence: true, length: { minimum: 2, maximum: 40 }
  validates :content, presence: true, length: {minimum: 2, maximum: 2000 }

  belongs_to :user
end
