class AddColumnToCustomers < ActiveRecord::Migration
  def change
    add_column(:customers, :address, :string)
    add_column(:customers, :dob, :date)
  end
end
