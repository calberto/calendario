class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # config.autoload_paths += %W(#{config.root}/lib)
  rescue_from Pundit::NotAuthorizedError, with: :usernot_authorized

  private
    def usernot_authorized
      flash[:notice] = "Você não tem permissão para fazer esta ação!"
      redirect_to(request.referrer || root_path)
    end
  
end
