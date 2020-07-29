module ApplicationHelper

    def full_name(model)
        "#{model.first_name} #{model.last_name}"
    end

    def logged_out?
        !client_signed_in? && !inspector_signed_in?
    end

end
