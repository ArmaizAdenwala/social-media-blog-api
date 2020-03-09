class ApplicationController < ActionController::API
  before_action :authenticate_request

  private
  def authenticate_request
    auth_header = request.headers['Authorization']
    regex = /^Bearer /
    if auth_header
      auth_header = auth_header.gsub(regex, '')
      @current_user = AccessToken.get_user_from_token(auth_header)
    end
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
