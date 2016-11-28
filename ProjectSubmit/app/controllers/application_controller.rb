class ApplicationController < ActionController::Base
# antes de autenticar
before_action :authorize
#esta linha já existia
  protect_from_forgery with: :exception

#autenticação dos users
protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end
#fim da classe
end
