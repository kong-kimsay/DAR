json.array!(@hr_config_transportations) do |hr_config_transportation|
  json.extract! hr_config_transportation, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_transportation_url(hr_config_transportation, format: :json)
end
