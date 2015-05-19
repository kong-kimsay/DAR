class Hr::Config::Ministry < ActiveRecord::Base
  def ministry_name
    "#{khtitle} | #{title}"
  end
end
