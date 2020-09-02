class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 2..20 }
  validates :body, presence: true, length: { in: 2..2000 }
end
