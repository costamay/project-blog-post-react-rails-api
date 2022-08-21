class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :post_url, :category_id, :user_id
end
