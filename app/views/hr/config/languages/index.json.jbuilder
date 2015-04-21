json.array!(@hr_config_languages) do |hr_config_language|
  json.extract! hr_config_language, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_language_url(hr_config_language, format: :json)
end
