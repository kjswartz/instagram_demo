class AccountController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to account_edit_path, notice: 'Your account has been updated.'
    else
      render :edit
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :website, :bio, :avatar, :avatar_cache)
  end

end
