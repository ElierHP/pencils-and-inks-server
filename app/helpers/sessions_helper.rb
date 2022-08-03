module SessionsHelper

    # Logs in the given user.
    def log_in(user)
        reset_session
        session[:user_id] = user.id
    end

    # Returns the currently logged in user.
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil?
    end

    # Returns true if the user is logged in and role is admin.
    def logged_in_admin?
        !current_user.nil? && current_user[:role] === 'admin'
    end

    # Returns unauthorized unless the user is logged in.
    def authorize_user
        render json: 'unauthorized', status: :unauthorized unless logged_in?
    end

    # Returns unauthorized unless the user is logged in as admin.
    def authorize_admin
        render json: 'unauthorized', status: :unauthorized unless logged_in_admin?
    end

    # Reset session and set current user to nil
    def log_out
        reset_session
        @current_user = nil
    end
end