class AddArrayToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :matches, :integer, array: true, default: []
  end
end
