class ApplicationController < ActionController::Base
    
    include SessionsHelper
    
    def authenticate_user
       if @current_user == nil
           flash[:notice] = "ログインが必要です"
       end
    end
     private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
   
end
