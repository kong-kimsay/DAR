json.array!(@hr_config_provinces) do |hr_config_province|
  json.extract! hr_config_province, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_province_url(hr_config_province, format: :json)
end
