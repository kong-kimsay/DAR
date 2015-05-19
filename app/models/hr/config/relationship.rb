class Hr::Config::Relationship < ActiveRecord::Base
  def relationship_name
    "#{khtitle} | #{title}"
  end
end
