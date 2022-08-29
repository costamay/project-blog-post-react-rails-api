class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments

    validates :title, presence: :true
    validates :post_url, presence: :true
    validates :content, presence: :true, length: {minimum: 50}
end
