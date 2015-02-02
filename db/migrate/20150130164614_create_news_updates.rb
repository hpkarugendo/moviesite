class CreateNewsUpdates < ActiveRecord::Migration
  def change
    create_table :news_updates do |t|
      t.string :photo
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
