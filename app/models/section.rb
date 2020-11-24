class Section < ApplicationRecord
  belongs_to :post
  has_many :episodes
end
