module Accessible
    extend ActiveSupport::Concern
    included do
      before_action :check_user
    end

    protected

    def check_user
        if current_inspector
            flash.clear
            redirect_to '/', notice: "You are already logged in as an inspector."
        elsif current_client
            flash.clear
            redirect_to '/', notice: "You are already logged in as a client."
        end
    end
end