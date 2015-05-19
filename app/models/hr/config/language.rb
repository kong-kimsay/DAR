class Hr::Config::Language < ActiveRecord::Base
  def language_name
    "#{khtitle} | #{title}"
  end
end
