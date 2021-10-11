class UsersController < ApplicationController
    def index
        @user = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
      @user = User.new(uid: params[:uid])
      if @user.save
        flash[:notice] = '追加しました'
        redirect_to root_path
      else
        render 'new'
      end
    end
    
    def destroy
      user = User.find(params[:id])
      user.destroy
      flash[:notice] = '削除しました'
      redirect_to root_path
    end
end
