class AddBaseQuantityField < ActiveRecord::Migration
  def self.up
		add_column :variants, :base_quantity, :integer
		add_column :products, :base_quantity, :integer
  end

  def self.down
		remove_column :products, :base_quantity
		remove_column :variants, :base_quantity
  end
end
