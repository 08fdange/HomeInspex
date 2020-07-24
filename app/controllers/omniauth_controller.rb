class OmniauthController < ApplicationController
    
    def facebook
        @client = Client.create_from_provider_data(request.env['omniauth.auth'])
        if @client.persisted?
            sign_in_and_redirect @client
        else
            flash[:error] = "There was a problem signing you in with Facebook. Please register or try signing in later."
            redirect_to new_client_registration_url
        end
    end
    
    def google_oauth2
        @client = Client.create_from_provider_data(request.env['omniauth.auth'])
        if @client.persisted?
            sign_in_and_redirect @client
        else
            flash[:error] = "There was a problem signing you in with Google. Please register or try signing in later."
            redirect_to new_client_registration_url
        end
    end

    def failure
        flash[:error] = "There was a problem signing you in. Please register or try signing in later."
        redirect_to new_client_registration_url
    end

end
