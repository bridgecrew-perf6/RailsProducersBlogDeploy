class RegistrationsController < Devise::RegistrationsController

    private

        def sign_up_params
            params.require(:user).permit(:email, :password, :password_confirmation, :name, :age)
        end

        def account_update_params
            params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :age, :views)
        end


end
