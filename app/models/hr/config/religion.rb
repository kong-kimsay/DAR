class Hr::Config::Religion < ActiveRecord::Base
  def religion_name
    "#{khtitle} | #{title}"
  end
end
