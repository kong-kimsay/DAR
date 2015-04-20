json.array!(@hr_config_educations) do |hr_config_education|
  json.extract! hr_config_education, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_education_url(hr_config_education, format: :json)
end
