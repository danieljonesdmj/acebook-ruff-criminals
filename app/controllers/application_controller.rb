class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception




  private

  def after_sign_out_path_for(resource_or_scope)
    p 'got here'
    new_user_session_path
  end
end
