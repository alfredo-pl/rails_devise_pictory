class AdminsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @users = User.all
    end

    def admin_true
        @user = User.find(params[:format])
        @user.update(admin: true)
        redirect_to admins_index_path
    end
    
    def admin_false
        @user = User.find(params[:format])
        @user.update(admin: false)
        redirect_to admins_index_path
    end
end
