class CreateOwner < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email_address, null: false

      t.timestamps
    end
  end
end
