class RegistrationsController < Devise::RegistrationsController

    private

    # This code overwrites the sign_up_params and account_update_params methods
    # to accept the :name attribute.

    # #sign_up && #account_update methods are in the Devise::RegistrationsController,
    # so we specified it and altered its methods below.

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(:name, :email,:password, :password_confirmation, :current_password)
    end

    ### Don't forget to specify this controller in routes.rb
end
