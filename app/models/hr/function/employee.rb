class Hr::Function::Employee < ActiveRecord::Base
  belongs_to :hr_config_careercode, :class_name => 'Hr::Config::Careercode',foreign_key: "Careercode_id"
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/No Image.gif"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
