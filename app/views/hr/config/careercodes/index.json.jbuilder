json.array!(@hr_config_careercodes) do |hr_config_careercode|
  json.extract! hr_config_careercode, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_careercode_url(hr_config_careercode, format: :json)
end
