class SessionsController < ApplicationController
    before_action :authenticate, except: [:new,:create]
    def new
    end
    def create
        if user.try(:authenticate, params[:password])
            session[:current_user] = user.id
            redirect_to root_url
        else
            redirect_to login_url
        end
    end
    
    def destroy
    end
    
    private
    def user
        @user = User.find_by_email(params[:email])
    end
end