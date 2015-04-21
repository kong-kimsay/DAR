json.array!(@hr_config_ministries) do |hr_config_ministry|
  json.extract! hr_config_ministry, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_ministry_url(hr_config_ministry, format: :json)
end
