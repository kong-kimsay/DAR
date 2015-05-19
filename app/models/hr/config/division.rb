class Hr::Config::Division < ActiveRecord::Base
  def division_name
    "#{khtitle} | #{title}"
  end
end
