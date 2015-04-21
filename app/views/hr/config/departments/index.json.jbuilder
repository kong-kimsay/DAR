json.array!(@hr_config_departments) do |hr_config_department|
  json.extract! hr_config_department, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_department_url(hr_config_department, format: :json)
end
