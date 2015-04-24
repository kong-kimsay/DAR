class Hr::Config::Careercode < ActiveRecord::Base
  has_many :hr_employees, :class_name => 'Hr::Employee', through: :Careercode_id
end
