class UsersController < ApplicationController
    def index
        render plain: 'hi'
    end

    def create
        user = User.new({name: params[:name], email: params[:email]})
        user.save
        render json: params
    end
    
    def edit
        render json: params
    end

    # private
    # def user_params
    #     params.require(:name).permit(:name, :email)
    # end

end