class Article < ApplicationRecord
  belongs_to :user
  has_many :article_tags

  validates :user_id, presence: true
  validates :title, presence: true
  validates :body,  presence: true
end
