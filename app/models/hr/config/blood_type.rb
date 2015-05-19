class Hr::Config::BloodType < ActiveRecord::Base
  def blood_name
    "#{khtitle} | #{title}"
  end
end
