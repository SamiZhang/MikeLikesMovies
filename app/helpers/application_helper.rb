module ApplicationHelper

  def time_since(time)
    hours = ((Time.now - time) / 3600).round
    minutes = ((Time.now - time) / 60).round

    return "#{(hours / 24).round} day(s) ago" if hours > 24

    if minutes < 1
      return "#{(minutes * 60).round} seconds ago"
    elsif minutes >= 60
      return "#{hours} hour(s) ago"
    else
      return "#{minutes} minute(s) ago"
    end
  end

  def review_completed?(review)
    review.group_review.due_date.past?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin_authenticate
    @admin = User.find(1)
    if session[:user_id] != @admin.id
      redirect_to '/'
    end
  end


def authenticate!
  redirect_to '/' unless session[:user_id]
end

end
