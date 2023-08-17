class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #devise利用の機能が使われる前にconfigue...メソッドが実行される。

  def after_sign_in_path_for(resource)
    post_images_path
  end

  def after_sign_out_path_for(resource)#サインアウト後どこに遷移するかを設定
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #ユーザ登録の際にユーザ名のデータ操作を許可している
  end

end
