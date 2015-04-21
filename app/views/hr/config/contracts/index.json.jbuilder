json.array!(@hr_config_contracts) do |hr_config_contract|
  json.extract! hr_config_contract, :id, :code, :title, :khtitle, :description, :khdescription, :usercreate, :userupdate
  json.url hr_config_contract_url(hr_config_contract, format: :json)
end
