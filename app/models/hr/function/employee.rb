class Hr::Function::Employee < ActiveRecord::Base
  belongs_to :hr_config_careercode, :class_name => 'Hr::Config::Careercode',foreign_key: "Careercode_id"
end
