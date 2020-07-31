class ClientsController < ApplicationController
    
    def show
        if client_signed_in?
            render :show
        else
            redirect_to '/'
        end
    end
    
end
