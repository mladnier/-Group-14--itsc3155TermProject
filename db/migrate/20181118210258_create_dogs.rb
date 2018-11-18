class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :sex
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
