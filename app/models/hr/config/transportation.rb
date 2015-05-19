class Hr::Config::Transportation < ActiveRecord::Base
  def transportation_name
    "#{khtitle} | #{title}"
  end
end
