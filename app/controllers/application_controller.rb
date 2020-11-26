class ApplicationController < ActionController::Base
  #before_action :authenticate_user! #ログインしてない時にログイン画面へ促すようにする
  before_action :configure_permitted_parameters, if: :devise_controller?  #deviseの初期設定に無いデータを保存できるようにする。

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
