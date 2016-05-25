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
end
