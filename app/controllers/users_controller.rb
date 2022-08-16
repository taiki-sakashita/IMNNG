class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
      flash[:notice] = 'ユーザーの作成に成功しました'
    else
      flash.now[:alert] = 'ユーザーの作成に失敗しました'
      render :root
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_config)
      redirect_to root_path, success: 'config update'
    else
      flash.now[:danger] = 'config update failured'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def user_config
    params.permit(:region)
  end

  def params_int(user_config)
    user_config.each do |key, value|
      if integer_string?(value)
        user_config[key]=value.to_i
      end
    end
  end

end
