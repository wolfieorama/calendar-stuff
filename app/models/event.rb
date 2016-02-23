class Event < ActiveRecord::Base
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :title

  def day_of_week
    time = Time.now
    time.strftime("%A")
  end
end
