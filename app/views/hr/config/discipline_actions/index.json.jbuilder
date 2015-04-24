json.array!(@hr_config_discipline_actions) do |hr_config_discipline_action|
  json.extract! hr_config_discipline_action, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_discipline_action_url(hr_config_discipline_action, format: :json)
end
