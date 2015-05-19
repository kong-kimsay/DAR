class Hr::Config::Department < ActiveRecord::Base
  def department_name
    "#{khtitle} | #{title}"
  end
end
