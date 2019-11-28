class Article < ApplicationRecord
  belongs_to :user
  has_many :article_tags

  validates :user_id, presence: true
  validates :title, presence: true
  validates :body,  presence: true

  rails_admin do
    configure :user do
      label 'Owner of this article: '
    end
  end
end
