json.array!(@hr_config_blood_types) do |hr_config_blood_type|
  json.extract! hr_config_blood_type, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_blood_type_url(hr_config_blood_type, format: :json)
end
