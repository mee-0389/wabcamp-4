class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #devise利用の機能が使われる前にconfigue...メソッドが実行される。

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #ユーザ登録の際にユーザ名のデータ操作を許可している
  end

end
