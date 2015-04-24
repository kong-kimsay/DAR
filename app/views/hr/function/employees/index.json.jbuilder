json.array!(@hr_function_employees) do |hr_function_employee|
  json.extract! hr_function_employee, :id, :code, :firstname, :lastname, :khfirstname, :khlastname
  json.url hr_function_employee_url(hr_function_employee, format: :json)
end
