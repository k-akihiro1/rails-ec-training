class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
      flash[:success] = "ユーザー情報の更新終了しました。"
    else
      flash[:error] = "ユーザー情報を更新できませんでした。。"
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :zipcode,
      :prefecture,
      :municipality,
      :address,
      :apartments,
      :email,
      :phone_number,
      :password
    )
  end

end
