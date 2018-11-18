class AddPasswordDigestToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :password_digest, :string
  end
end
