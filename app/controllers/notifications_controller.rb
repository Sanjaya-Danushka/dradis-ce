class NotificationsController < AuthenticatedController
  include ProjectScoped

  def index
    @notifications = current_user.notifications.newest
    @unread_count = @notifications.unread.count

    respond_to do |format|
      format.js
    end
  end
end
