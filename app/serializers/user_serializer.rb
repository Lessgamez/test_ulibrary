class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :lastname, :email, :rol, :password
end
