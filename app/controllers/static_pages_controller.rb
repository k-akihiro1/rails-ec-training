class StaticPagesController < ApplicationController
  def home
  end

  def guest_login
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.alphanumeric(6)
      user.last_name = "太郎"
      user.first_name = "ゲスト"
      user.zipcode = "9999999"
      user.prefecture = "UAE県"
      user.municipality = "ドバイ市"
      user.address = "コンラッド町"
      user.apartments = "エミレーツ"
      user.phone_number = "99999999999"
      user.user_classification_id = 1
      user.delete_flag = false
    end
    log_in(user)
    flash[:notice] = "ゲストユーザーは更新・退会はできません。"
    redirect_to current_user
  end

end
