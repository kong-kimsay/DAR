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
      t.string    :SpouseName, :max => 120
      t.string    :SpouseID, :max => 20
      t.string    :SpouseTax, :max => 20
      t.string    :BankName, :max => 20
      t.string    :BankBranch, :max => 140
      t.string    :BankAccount, :max => 50
      t.string    :height, :max => 10
      t.string    :weight,  :max => 10
      t.references  :BloodType
      t.string    :performance, :max => 100
      t.string    :branch,  :max => 10
      t.string    :location, :max => 10
      t.string    :division, :max => 10
      t.string    :department, :max => 10
      t.string    :office, :max => 10
      t.string    :LevelCode, :max => 10
      t.belongs_to  :Careercode
      t.float     :salary
      t.datetime  :EffectDate
      t.datetime  :StartDate
      t.datetime  :ProbationDate
      t.datetime  :ExpiryDate
      t.datetime  :PermanentDate
      t.float     :RetireAge
      t.datetime  :TerminateDate
      t.string    :TerminateCode, :max => 10
      t.string    :TerminateRemark, :max => 200
      t.string    :ContactAddress
      t.string    :KHContactAddress
      t.string    :ContactPhone,:max => 10
      t.string    :PermanentAddress
      t.string    :KHPermanentAddress
      t.string    :PermanentPhone, :max => 10
      t.string    :EmergencyName, :max => 150
      t.references :Relationship,:EmergencyRelationship
      t.string    :EmergencyAddress, :max => 200
      t.string    :EmergencyPhone,:max => 15
      t.string    :UserCreate
      t.string    :UserUpdate
      t.timestamps
    end
  end
end
