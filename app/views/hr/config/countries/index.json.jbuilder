json.array!(@hr_config_countries) do |hr_config_country|
  json.extract! hr_config_country, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_country_url(hr_config_country, format: :json)
end
