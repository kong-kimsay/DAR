class CreateHrConfigCountries < ActiveRecord::Migration
  def change
    create_table :hr_config_countries do |t|
      t.string :code
      t.string :title
      t.string :khtitle
      t.text :description
      t.text :khdescription
      t.integer :usercreate
      t.integer :userupdate

      t.timestamps
    end
  end
end
