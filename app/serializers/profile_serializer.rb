class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :email, :bio, :avatar_url, :user_id
end
