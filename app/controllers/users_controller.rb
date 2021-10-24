class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "登録完了しました。"
      redirect_to @user
    else
      render 'new'
      flash[:error] = "登録失敗しました。"
    end

  private

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
end
