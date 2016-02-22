class Event < ActiveRecord::Base
  def day_of_week
    time = Time.now
    time.strftime("%A")
  end
end
