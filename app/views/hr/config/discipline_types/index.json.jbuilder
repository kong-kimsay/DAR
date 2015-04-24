json.array!(@hr_config_discipline_types) do |hr_config_discipline_type|
  json.extract! hr_config_discipline_type, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_discipline_type_url(hr_config_discipline_type, format: :json)
end
