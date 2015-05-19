class AddAttachmentImageToUsers < ActiveRecord::Migration
  def self.up
    change_table :sys_function_users do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sys_function_users, :image
  end
end
