class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :role, :first_name, :last_name
end
