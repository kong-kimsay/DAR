class Hr::Config::Nation < ActiveRecord::Base
  def nation_name
    "#{khtitle} | #{title}"
  end
end
