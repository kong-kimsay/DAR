json.array!(@hr_config_education_types) do |hr_config_education_type|
  json.extract! hr_config_education_type, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_education_type_url(hr_config_education_type, format: :json)
end
