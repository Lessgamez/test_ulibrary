class RolController < ApplicationController
  def index
    @rol = Rol.all
    render json: @rol
  end

  def create
    rol= Rol.new(rol_params)

    if rol.save
      render json: RolSerializer.new(rol).serialized_json
    else
      render json: {error: rol.erros.messages},status: 422
    end
  end

  def rol_params
    params.require(:rol).permit(:name, :state)
  end
end
