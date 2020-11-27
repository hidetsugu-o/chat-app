class UsersController < ApplicationController

  def edit
  end

  def update
    # editのビューで編集した、ユーザー名とemail情報を、ログイン中のユーザーレコードに上書きする。
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
