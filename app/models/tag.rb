class Tag < ApplicationRecord
  has_many :article_tags

  validates :name, presence: true, length: { in: 1..20 }
end
