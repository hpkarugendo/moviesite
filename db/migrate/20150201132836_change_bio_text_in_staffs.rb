class ChangeBioTextInStaffs < ActiveRecord::Migration
  def up
    change_column(:staffs, :bio, :text)
    change_column(:news_updates, :body, :text)
    change_column(:reviews, :body, :text)
    change_column(:actors, :bio, :text)
    add_column(:products, :product_info, :text)
    add_column(:products, :disc, :string)
  end

  def down
  end
end
