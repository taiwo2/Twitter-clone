class RegisterationsController < Devise::RegisterationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password:confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password:confirmation, :current_password)
  end
end
