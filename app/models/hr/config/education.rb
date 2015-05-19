class Hr::Config::Education < ActiveRecord::Base
  def education_name
    "#{khtitle} | #{title}"
  end
end
