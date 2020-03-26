class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name, unique: true, null: false

      t.timestamps null: false
    end
  end
end
