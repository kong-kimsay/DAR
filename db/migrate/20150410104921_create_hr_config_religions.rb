class CreateHrConfigReligions < ActiveRecord::Migration
  def change
    create_table :hr_config_religions do |t|
      t.string :code
      t.string :title
      t.string :khtitle
      t.text :description
      t.string :khdescription
      t.integer :usercreate
      t.integer :userupdate

      t.timestamps
    end
  end
end
