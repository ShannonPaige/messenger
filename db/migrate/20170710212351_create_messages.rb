class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :body
      t.references :sender
      t.references :receiver

      t.timestamps
    end
  end
end
