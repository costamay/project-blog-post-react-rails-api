class CommentSerializer < ActiveModel::Serializer
  attributes :id, :description, :post_id, :user_id
end
