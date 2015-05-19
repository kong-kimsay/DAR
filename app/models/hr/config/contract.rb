class Hr::Config::Contract < ActiveRecord::Base
  def contract_name
    "#{khtitle} | #{title}"
  end
end
