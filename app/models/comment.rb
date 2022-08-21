class Comment < ApplicationRecord
    belongs_to :posts
    belongs_to :user
    validates :description, presence: true
end
