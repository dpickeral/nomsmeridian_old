class AddMidpointToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :midpoint, :float
  end
end
