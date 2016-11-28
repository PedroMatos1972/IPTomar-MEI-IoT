class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.integer :identification
      t.text :descricao

      t.timestamps
    end
  end
end
