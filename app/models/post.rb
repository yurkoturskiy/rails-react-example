class Post < ApplicationRecord
    has_many :sections
    has_many :episodes, through: :sections
end
