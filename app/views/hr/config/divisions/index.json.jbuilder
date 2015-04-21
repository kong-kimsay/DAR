json.array!(@hr_config_divisions) do |hr_config_division|
  json.extract! hr_config_division, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_division_url(hr_config_division, format: :json)
end
