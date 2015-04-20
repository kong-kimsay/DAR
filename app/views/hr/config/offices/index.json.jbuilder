json.array!(@hr_config_offices) do |hr_config_office|
  json.extract! hr_config_office, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_office_url(hr_config_office, format: :json)
end
