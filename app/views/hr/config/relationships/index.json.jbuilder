json.array!(@hr_config_relationships) do |hr_config_relationship|
  json.extract! hr_config_relationship, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_relationship_url(hr_config_relationship, format: :json)
end
