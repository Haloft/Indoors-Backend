class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :created_at, :token

  attribute :created_date do |user|
    user.created_at && user.created_at.strftime('%d/%m/%Y')
  end
end
