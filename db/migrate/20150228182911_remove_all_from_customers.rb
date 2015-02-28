class RemoveAllFromCustomers < ActiveRecord::Migration
  def up
  end

  def down
    Customer.delete_all
  end
end
