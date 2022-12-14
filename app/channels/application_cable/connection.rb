module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private
      def find_verified_user
        if current_user = User.find(cookies.encrypted['_gymbro_session']['warden.user.user.key'][0][0])
          current_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
