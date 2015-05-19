class Hr::Config::Certification < ActiveRecord::Base
  def certification_name
    "#{khtitle} | #{title}"
  end
end
