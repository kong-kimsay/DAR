class CreateHrFunctionEmployees < ActiveRecord::Migration
  def change
    create_table :hr_function_employees do |t|
      t.string :code, :max => 15, :null => false
      t.string :firstname, :max => 70
      t.string :lastname, :max => 70
      t.string :khfirstname, :max => 70
      t.string :khlastname, :max => 70
      t.string :offtype, :max => 10
      t.string :title, :max => 5
      t.string :gender, :max => 1
      t.date   :dob
      t.string :marital, :max => 10
      t.text   :pob
      t.references :Country
      t.references :Nation
      t.references :Religion
      t.references :Transportation
      t.string  :PassportNo, :max => 30
      t.datetime :PassportExp
      t.string  :VisaNo, :max => 30
      t.datetime  :VisaIssue
      t.datetime  :VisaExpiry
      t.datetime  :VisaExtend
      t.string    :IDCard, :max=> 20
      t.datetime  :IDCardExp
      t.string    :phone1, :max => 20
      t.string    :phone2, :max => 20
      t.string    :PhoneExt, :max => 20
      t.string    :fax, :max => 20
      t.string    :email1, :max => 20
      t.string    :email2, :max => 20
      t.string    :photo
      ss

      t.timestamps
    end
  end
end
