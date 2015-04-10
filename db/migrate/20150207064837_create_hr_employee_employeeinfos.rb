class CreateHrEmployeeEmployeeinfos < ActiveRecord::Migration
  def change
    create_table :hr_employee_employeeinfos do |t|
      t.string 'code', :limit => 50	
      t.string 'first_name', :limit => 20
      t.string 'last_name', :limit => 50
      t.string 'DOB'
      t.timestamps
    end
  end
end
