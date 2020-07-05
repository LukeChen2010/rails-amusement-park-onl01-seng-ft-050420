class SessionController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def delete
        session.delete("user_id")
        redirect_to root_url
    end
end