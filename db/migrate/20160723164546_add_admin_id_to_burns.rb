class AddAdminIdToBurns < ActiveRecord::Migration
  def change
    add_column :burns, :admin_id, :integer
  end
end
