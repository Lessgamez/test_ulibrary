class UserController < ApplicationController
    def index
        @user = User.all
        render json: @user
      end

      def create
        user= User.new(user_params)

        if user.save
          render json: userSerializer.new(user).serialized_json
        else
          render json: {error: user.erros.messages},status: 422
        end

      end
    def destroy
        @user = User.find(params[:id])
        if @user.present?
          @user.destroy
        end
        render json: {error: @user.errors.messages},status: 422
    end
      def user_params
        params.require(:user).permit(:name, :lastname, :email, :rol, :password)
      end
end
