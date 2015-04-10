json.array!(@hr_config_religions) do |hr_config_religion|
  json.extract! hr_config_religion, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_religion_url(hr_config_religion, format: :json)
end
