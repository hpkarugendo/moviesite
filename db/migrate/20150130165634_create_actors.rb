class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :photo
      t.string :name
      t.string :role
      t.string :bio

      t.timestamps
    end
  end
end
