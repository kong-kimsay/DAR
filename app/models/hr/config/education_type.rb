class Hr::Config::EducationType < ActiveRecord::Base
  def education_type_name
    "#{khtitle} | #{title}"
  end
end
