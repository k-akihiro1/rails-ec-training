class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_classification_id = 1

    if @user.save!
      flash[:success] = "登録完了しました。"
      redirect_to login_path
    else
      render 'new'
      flash[:error] = "登録失敗しました。"
    end
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
        :password,
        :password_confirmation
      )
    end

end
