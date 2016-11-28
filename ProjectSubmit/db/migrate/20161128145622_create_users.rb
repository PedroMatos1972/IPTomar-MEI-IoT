class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :identification
      t.text :name
      t.text :email
      t.text :type
      t.text :photo

      t.timestamps
    end
  end
end
