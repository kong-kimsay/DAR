json.array!(@hr_config_nations) do |hr_config_nation|
  json.extract! hr_config_nation, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_nation_url(hr_config_nation, format: :json)
end
