json.array!(@hr_config_maritals) do |hr_config_marital|
  json.extract! hr_config_marital, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_marital_url(hr_config_marital, format: :json)
end
