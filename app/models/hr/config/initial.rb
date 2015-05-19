class Hr::Config::Initial < ActiveRecord::Base
  def initial_name
    "#{khtitle} | #{title}"
  end
end
