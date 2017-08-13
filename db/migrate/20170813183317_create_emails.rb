class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :name,    null: false
      t.string :email,   null: false
      t.string :company, null: false
      t.string :message, null: false

      t.timestamps
    end
  end
end
