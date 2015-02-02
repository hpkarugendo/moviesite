class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :photo
      t.string :name
      t.string :role
      t.string :bio

      t.timestamps
    end
  end
end
