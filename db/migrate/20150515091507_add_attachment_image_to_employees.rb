class AddAttachmentImageToEmployees < ActiveRecord::Migration
  def self.up
    change_table :hr_function_employees do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hr_function_employees, :image
  end
end
