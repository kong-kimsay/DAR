class Hr::Config::DisciplineType < ActiveRecord::Base
  def discipline_type_name
    "#{khtitle} | #{title}"
  end
end
