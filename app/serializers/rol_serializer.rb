class RolSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :status
end
