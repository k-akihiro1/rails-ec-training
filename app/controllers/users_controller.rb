class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :show]
  before_action :correct_user,   only: [:edit, :show]

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_classification_id = 1

    if @user.save
      flash[:success] = "ユーザーを登録しました。こちらからログインしてください。"
      redirect_to login_path
    else
      flash[:error] = "登録失敗しました。"
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "ユーザー情報の更新終了しました。"
      redirect_to @user
    else
      flash[:error] = "ユーザー情報を更新できませんでした。"
      render :edit
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
