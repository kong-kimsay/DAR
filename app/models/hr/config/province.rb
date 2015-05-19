class Hr::Config::Province < ActiveRecord::Base
  def province_name
    "#{khtitle} | #{title}"
  end
end
