class Hr::Config::Marital < ActiveRecord::Base
  def marital_name
    "#{khtitle} | #{title}"
  end
end
