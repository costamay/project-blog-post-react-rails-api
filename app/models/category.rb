class Category < ApplicationRecord
    has_many :posts
    validates :name, presence: :true
    validates :content, presence: :true, length: {minimum: 50}
end
