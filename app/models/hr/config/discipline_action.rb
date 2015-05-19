class Hr::Config::DisciplineAction < ActiveRecord::Base
  def discipline_name
    "#{khtitle} | #{title}"
  end
end
