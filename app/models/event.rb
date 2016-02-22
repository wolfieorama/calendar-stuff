class Event < ActiveRecord::Base
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :description
  
  def day_of_week
    time = Time.now
    time.strftime("%A")
  end
end
