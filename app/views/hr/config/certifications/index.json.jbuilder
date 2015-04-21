json.array!(@hr_config_certifications) do |hr_config_certification|
  json.extract! hr_config_certification, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_certification_url(hr_config_certification, format: :json)
end
