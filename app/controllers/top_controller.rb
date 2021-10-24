class TopController < ApplicationController
    def main
        @tweet = Tweet.all
        render 'main'
    end
    
    def login
   
        user = User.find_by(uid: params[:uid])
        if user and BCrypt::Password.new(user.pass) == params[:pass]
                session[:login_uid] = user.uid
                redirect_to root_path
        else 
            render 'login'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end
