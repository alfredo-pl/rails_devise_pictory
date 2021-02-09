class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def authenticate_admin!
    unless current_user.present? && current_user.admin?
      flash[:alert] = "you don't have authorization"
      redirect_to root_path
    end
  end
  def after_sign_in_path_for(resource)
    if current_user.admin?
      admins_index_path
    else
      super
    end
  end
end
