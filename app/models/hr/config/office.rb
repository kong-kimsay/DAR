class Hr::Config::Office < ActiveRecord::Base
  def office_name
    "#{khtitle} | #{title}"
  end
end
