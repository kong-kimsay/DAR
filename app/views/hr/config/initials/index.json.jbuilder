json.array!(@hr_config_initials) do |hr_config_initial|
  json.extract! hr_config_initial, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_initial_url(hr_config_initial, format: :json)
end
