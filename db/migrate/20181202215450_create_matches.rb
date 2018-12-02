class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :dogone
      t.integer :dogtwo
      t.integer :chat_id

      t.timestamps
    end
  end
end
