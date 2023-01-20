class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :last_name, limit: 20
      t.string :first_name, limit: 20
      t.string :nickname, limit: 20
      t.string :email, limit: 50
      t.integer :age

      t.timestamps
    end
  end
end
