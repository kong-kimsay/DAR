class Hr::Config::Country < ActiveRecord::Base
  def county_name
    "#{khtitle} | #{title}"
  end
end
