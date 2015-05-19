class Sys::Function::User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/No Image.gif"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  validate :username,:persence => true, :uniqueness =>{:case_sensitive => false}

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["username = :value OR lower(email) = :value",{:value => login.downcase}]).first
    end
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

end
