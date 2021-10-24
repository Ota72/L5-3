class TopController < ApplicationController
    def main
        @tweet = Tweet.all
        render 'main'
    end
    
    def login
        user_req = User.find_by(uid: params[:uid])
        if user_req and BCrypt::Password.new(user_req.pass) == params[:pass]
            session[:login_uid] = user_req.uid
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
